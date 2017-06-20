package com.liliang.filte;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.liliang.dao.PurviewDAO;
import com.liliang.entry.Basis;
import com.liliang.entry.Purview;

public class PublicFilte extends HandlerInterceptorAdapter {
	@Autowired
	private PurviewDAO purviewDAO;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String url = request.getServletPath();
		System.out.println(url);
		Purview p = this.purviewDAO.getByUri(url);
		if (null==p||p.getLevel() == -1) {
			return super.preHandle(request, response, handler);
		} else {
			Object o = request.getSession().getAttribute("user");
			try {
				Basis b = (Basis) o;
				return super.preHandle(request, response, handler);
			} catch (Exception e) {
				request.getRequestDispatcher("toLogin").forward(request, response);
				return false;
			}
		}
	}
}
