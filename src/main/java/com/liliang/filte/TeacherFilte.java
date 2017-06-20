package com.liliang.filte;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.liliang.dao.PurviewDAO;
import com.liliang.entry.Basis;
import com.liliang.entry.Purview;

public class TeacherFilte extends HandlerInterceptorAdapter {
	@Autowired
	private PurviewDAO purviewDAO;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Object o = request.getSession().getAttribute("user");
		Basis basis = new Basis();
		if (null == o) {// 未登录
			request.getRequestDispatcher("/toLogin").forward(request, response);
			return false;
		}
		try {
			basis = (Basis) o;
		} catch (Exception e) {// 强转失败
			request.getRequestDispatcher("/toLogin").forward(request, response);
			return false;
		}
		if (basis.getLevel() != 2) {// 身份不对
			request.getRequestDispatcher("/toLogin").forward(request, response);
			return false;
		}
		String url = request.getServletPath();
		String[] list=url.split("/");
		url="/"+list[1]+"/"+list[2];
		System.out.println(url);
		Purview p = this.purviewDAO.getByUri(url);
		
		if (p == null) {// 路径不对
			request.getRequestDispatcher("/toLogin").forward(request, response);
			return false;
		}
		if (p.getLevel() == 2 || p.getLevel() == 3 || p.getLevel() == 5 || p.getLevel() == 7) {// 权限正常
			return super.preHandle(request, response, handler);
		} else {// 权限不正常
			request.getRequestDispatcher("/toLogin").forward(request, response);
			return false;
		}
	}
}
