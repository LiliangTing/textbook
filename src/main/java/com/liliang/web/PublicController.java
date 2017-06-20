package com.liliang.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.liliang.entry.Basis;
import com.liliang.entry.Student;
import com.liliang.entry.result.ResultDO;
import com.liliang.service.BasisService;
import com.liliang.service.StudentService;

@Controller
public class PublicController {
	@Autowired
	private BasisService basisService;

	@Autowired
	private StudentService studentService;

	@RequestMapping("toLogin")
	public String toLogin(HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "login";
		}
		try {
			return "redirect:toHome";
		} catch (Exception e) {
			return "login";
		}
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(Model model, HttpSession session, @RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password) {
		if (null == username) {
			model.addAttribute("errorMessage", "请输入您的学号！");
			return "login";
		}
		if (null == password) {
			model.addAttribute("errorMessage", "请输入您的密码！");
			return "login";
		}
		if (this.basisService.login(username, password)) {
			ResultDO<Basis> basis = this.basisService.getBasisById(username);
			if (basis.getResult().getLevel() == 3) {
				ResultDO<Student> student = this.studentService.getById(username);
				session.setAttribute("user", student.getResult());
			} else {
				session.setAttribute("user", basis.getResult());
			}
			return "redirect:toHome";
		}
		model.addAttribute("errorMessage", "用户名或密码错误！");
		return "login";
	}

	@RequestMapping(value = "outLogin", method = RequestMethod.GET)
	public String outLogin(HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "login";
		}
		session.removeAttribute("user");
		return "login";
	}

	@RequestMapping(value = "toHome")
	public String toHome(HttpSession session, Model model) {
		if (null == session.getAttribute("user")) {
			return "redirect:toLogin";
		}
		Basis basis = (Basis) session.getAttribute("user");
		if (basis.getLevel() == 3) {
			int falg = this.studentService.getStudnetPost(basis.getUsername());
			if (falg != -1) {
				session.setAttribute("post", falg);
			}
		}
		return "index";
	}

}
