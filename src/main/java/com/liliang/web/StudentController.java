package com.liliang.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.liliang.entry.Booking;
import com.liliang.entry.CourSem;
import com.liliang.entry.Student;
import com.liliang.entry.result.ResultDO;
import com.liliang.enums.Menu;
import com.liliang.service.BookingService;
import com.liliang.service.CourSemService;

@RequestMapping(value = "student/")
@Controller
public class StudentController {
	@Autowired
	private CourSemService courSemService;
	@Autowired
	private BookingService bookingService;

	@RequestMapping(value = "toBookingBook")
	public String toBookingBook(HttpSession session, Model model) {
		model.addAttribute("menu1", Menu.MENU1_BOOKINGMANAGE);
		model.addAttribute("menu2", Menu.MENU2_BOOKINGBOOK);
		Student s = new Student();
		try {
			s = (Student) session.getAttribute("user");
		} catch (Exception e) {
			model.addAttribute("msg", "您还不是学生身份,请联系管理员确认！");
			return "student/myCour";
		}
		ResultDO<List<CourSem>> list = this.courSemService.getCourSemByClassId(s, false);
		if (list.isSuccess()) {
			model.addAttribute("list", list.getResult());
		} else {
			model.addAttribute("msg", list.getMessage());
		}
		ResultDO<List<Booking>> bookings = this.bookingService.getBySnoSemId(s.getUsername(), false);
		if (bookings.isSuccess()) {
			model.addAttribute("bookings", bookings.getResult());
		} else {
			model.addAttribute("message", bookings.getMessage());
		}
		return "student/myCour";
	}

	@RequestMapping(value = "bookingBook/{id}")
	public String bookingBook(HttpSession session, Model model, @PathVariable("id") int id) {
		Student s = new Student();
		try {
			s = (Student) session.getAttribute("user");
		} catch (Exception e) {
			model.addAttribute("msg", "您还不是学生身份,请联系管理员确认！");
			return "student/myCour";
		}
		this.bookingService.booking(s.getUsername(), id);
		return "redirect:/student/toBookingBook";
	}

	@RequestMapping(value = "bookinglist")
	public String bookinglist(HttpSession session, Model model, @RequestParam(value = "id") int[] id) {

		Student s = new Student();
		try {
			s = (Student) session.getAttribute("user");
		} catch (Exception e) {
			model.addAttribute("msg", "您还不是学生身份,请联系管理员确认！");
			return "student/myCour";
		}
		for (int csId : id) {
			System.out.println(csId);
			this.bookingService.booking(s.getUsername(), csId);
		}
		return "redirect:/student/toBookingBook";
	}

	@RequestMapping(value = "bookingHistory")
	public String bookHistory(HttpSession session, Model model) {
		Student s = new Student();
		try {
			s = (Student) session.getAttribute("user");
		} catch (Exception e) {
			model.addAttribute("msg", "您还不是学生身份,请联系管理员确认！");
			return "student/bookingHistory";
		}
		ResultDO<List<Booking>> list = this.bookingService.getBySnoSemId(s.getUsername(), true);
		if (list.isSuccess()) {
			model.addAttribute("list", list.getResult());
		} else {
			model.addAttribute("msg", list.getMessage());
		}
		return "student/bookingHistory";
	}

	@RequestMapping("unbooking/{id}")
	public String unbooking(Model model, HttpSession session, @PathVariable(value = "id") int id) {
		Student s = new Student();
		try {
			s = (Student) session.getAttribute("user");
		} catch (Exception e) {
			model.addAttribute("msg", "您还不是学生身份,请联系管理员确认！");
			return "student/myCour";
		}
		this.bookingService.unbooking(s.getUsername(), id);
		return "redirect:/student/toBookingBook";
	}

}
