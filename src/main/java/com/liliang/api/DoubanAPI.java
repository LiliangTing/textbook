package com.liliang.api;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.liliang.entry.Book;

public class DoubanAPI {
	private static String httpUrl = "https://api.douban.com/v2/book/isbn/";

	/**
	 * @param urlAll
	 *            :请求接口
	 * @param httpArg
	 *            :参数
	 * @return 返回结果
	 */
	public static Book request(String isbn) {
		BufferedReader reader = null;
		String result = null;
		StringBuffer sbf = new StringBuffer();

		try {
			URL url = new URL(httpUrl + isbn);

			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			connection.connect();
			if (200 != connection.getResponseCode()) {
				return null;
			}
			InputStream is = connection.getInputStream();
			reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
			String strRead = null;
			while ((strRead = reader.readLine()) != null) {
				sbf.append(strRead);
			}
			reader.close();
			result = sbf.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		Book book = new Book();
		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		try {
			JsonNode jn = objectMapper.readTree(result);
			book.setTitle(jn.get("title").toString().replaceAll("\"", ""));
			book.setIsbn13(isbn);
			book.setAuthor(jn.get("author").get(0).toString().replaceAll("\"", ""));
			book.setCatalog(jn.get("catalog").toString().replace("\"", ""));
			book.setPrice(Float.parseFloat(jn.get("price").toString().replace("\"", "").replace("元", "")));
			book.setPublisher(jn.get("publisher").toString().replace("\"", ""));
			book.setSummary(jn.get("summary").toString());
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		return book;

	}

	public static void main(String[] args) {
		System.out.println(request("9787121160837").toString());
	}
}
