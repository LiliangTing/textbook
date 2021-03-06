package com.liliang.web;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liliang.entry.Book;
import com.liliang.entry.Classes;
import com.liliang.entry.CourSem;
import com.liliang.entry.Student;
import com.liliang.entry.result.ResultDO;
import com.liliang.service.BookService;
import com.liliang.service.BookingService;
import com.liliang.service.CourSemService;
import com.liliang.service.StudentService;

@Controller
@RequestMapping("admin/")
public class AdminController {

	@Autowired
	private BookService bookservice;
	@Autowired
	private CourSemService courSemService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private BookingService bookingService;

	@RequestMapping(value = "toSetBookDiscount/{isbn13}")
	public String toSetBookDiscount(Model model, @PathVariable("isbn13") String isbn13) {
		if (isbn13 == null || isbn13 == "") {
			return "";
		}
		ResultDO<Book> book = this.bookservice.getById(isbn13);
		if (book.isSuccess())
			model.addAttribute("book", book.getResult());
		else
			model.addAttribute("msg", book.getMessage());
		return "admin/setBook";
	}

	@RequestMapping("viewBook/{page}")
	public String viewBook(Model model, @PathVariable("page") int page) {
		PageInfo<CourSem> pi = this.courSemService.getCourSemBySemId(0, page);
		model.addAttribute("page", pi);
		return "admin/viewBook";
	}

	@RequestMapping("setBookDiscount")
	@ResponseBody
	public Map<String, String> setBookDiscout(Model model, @RequestParam(value = "isbn", defaultValue = "") String isbn,
			@RequestParam("discount") float discount) {
		Map<String, String> map = new HashMap<String, String>();
		if (isbn == "" || discount == 0) {
			map.put("msg", "教材编号或价格错误");
			map.put("status", "0");
			return map;
		}
		int i = this.bookservice.setDiscount(isbn, new BigDecimal(discount));
		map.put("url", "admin/viewBook");
		map.put("status", new String() + i);
		return map;
	}

	@RequestMapping("bookHistory/{page}")
	public String bookHistory(Model model, @PathVariable(value = "page") int page) {
		PageHelper.startPage(page, 50);
		PageInfo<CourSem> pi = this.courSemService.getCourSemBySemId(-1, page);
		model.addAttribute("page", pi);
		return "admin/bookHistory";
	}

	@RequestMapping(value = "tobulkbooking")
	public String tobulkbooking(Model model) {
		ResultDO<List<Classes>> classlist = this.studentService.getAllClass();
		if (classlist.isSuccess()) {
			model.addAttribute("classlist", classlist.getResult());
		} else {
			model.addAttribute("msg", classlist.getMessage());
		}
		return "admin/bulkbooking";
	}

	@RequestMapping("bulkbooking")
	@ResponseBody
	public Map<String, String> bulkbooking(@RequestParam("classIds[]") String[] classIds) {
		Map<String, String> map = new HashMap<String, String>();
		Map<String, List<Student>> studentMap = new HashMap<String, List<Student>>();
		for (String classid : classIds) {
			studentMap.putAll(this.studentService.getByClassId(classid).getResult());
		}
		int unsuccessCount = this.bookingService.bookingByList(studentMap);
		map.put("status", new String() + unsuccessCount);
		return map;
	}

}
