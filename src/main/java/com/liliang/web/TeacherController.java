package com.liliang.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liliang.api.DoubanAPI;
import com.liliang.entry.Basis;
import com.liliang.entry.Book;
import com.liliang.entry.CourSem;
import com.liliang.entry.result.ResultDO;
import com.liliang.enums.Menu;
import com.liliang.service.CourSemService;

@Controller
@RequestMapping(value = "teacher/")
public class TeacherController {
	@Autowired
	private CourSemService courSemService;

	/**
	 * 获取当前学的教材
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "myCourse")
	public String myCourse(Model model, HttpSession session) {
		Basis basis = null;
		try {
			basis = (Basis) session.getAttribute("user");
		} catch (Exception e) {
			return "redirect:toHome";
		}
		ResultDO<List<CourSem>> bookCourSem = this.courSemService.getCourSemByTeacherId(basis.getUsername(), false);
		if (bookCourSem.isSuccess()) {
			model.addAttribute("courSemlist", bookCourSem.getResult());
		}
		model.addAttribute("menu1", Menu.MENU1_BOOKMANAGE);
		model.addAttribute("menu2", Menu.MENU2_STATISTICSBOOK);
		return "teacher/myCourse";
	}

	/**
	 * 进入选定教材页面
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "toSetCourBook/{id}")
	public String toSetCourBook(Model model, @PathVariable(value = "id") int id) {
		if (id == 0) {
			model.addAttribute("msg", "操作有误，请返回后重新操作");
			return "/teacher/setCourBook";
		}
		ResultDO<CourSem> bcs = this.courSemService.getById(id);
		if (bcs.isSuccess()) {
			model.addAttribute("cs", bcs.getResult());
		} else {
			model.addAttribute("msg", "没有找到这条记录！");
		}
		model.addAttribute("menu1", Menu.MENU1_BOOKMANAGE);
		model.addAttribute("menu2", Menu.MENU2_STATISTICSBOOK);
		return "/teacher/setCourBook";
	}

	/**
	 * 选定教材的逻辑
	 * 
	 * @param session
	 * @param id
	 * @param isbn
	 * @return
	 */
	@RequestMapping("setCourBook/{id}/{isbn}")
	public @ResponseBody Map<String, String> setCourBook(HttpSession session, @PathVariable(value = "id") int id,
			@PathVariable(value = "isbn") String isbn) {
		Map<String, String> map = new HashMap<String, String>();
		if (isbn == null || isbn == "") {
			map.put("status", "-1");
			map.put("msg", "请输入图书ISBN!");
			return map;
		}
		Book book = DoubanAPI.request(isbn);
		if (null == book) {
			map.put("status", "-1");
			map.put("msg", "未找到该图书!");
			return map;
		}
		Basis b = new Basis();
		try {
			b = (Basis) session.getAttribute("user");
		} catch (Exception e) {
			map.put("status", "0");
			map.put("msg", "您还未登录");
			return map;
		}
		ResultDO<CourSem> cs = this.courSemService.getById(id);
		if (!cs.isSuccess()) {
			map.put("status", "0");
			map.put("msg", "未找到该教程");
			return map;
		}
		System.out.println(b.getUsername());
		Map<String, String> result = this.courSemService.addBook(book, b.getUsername(), cs.getResult().getCourId());
		if (result.get("status") == "1") {
			map.put("status", "1");
			map.put("msg", "图书已经添加");
			map.put("url", "teacher/myCourse");
			return map;
		} else {
			map.put("status", "-1");
			map.put("msg", result.get("msg"));
		}
		return map;
	}

	/**
	 * 查看历史
	 *
	 **/
	@RequestMapping(value = "bookHistory/{page}")
	public String bookHistory(HttpSession session, Model model, @PathVariable(value = "page") int page) {
		Object o = session.getAttribute("user");
		if (null == o) {
			return "redirect:toLogin";
		}
		Basis b = (Basis) o;
		PageHelper.startPage(page, 20);
		ResultDO<List<CourSem>> list = this.courSemService.getCourSemByTeacherId(b.getUsername(), true);
		PageInfo<CourSem> pi = new PageInfo<CourSem>(list.getResult());
		model.addAttribute("page", pi);
		model.addAttribute("list", list.getResult());
		return "teacher/bookHistory";
	}
}
