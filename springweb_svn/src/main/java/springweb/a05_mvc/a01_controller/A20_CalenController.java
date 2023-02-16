package springweb.a05_mvc.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A20_CalenController {
	
	@GetMapping("/calendar.do")
	public String calendar() {
		return "WEB-INF\\views\\a05_mvc\\a20_fullcalendar.html";
	}
	@GetMapping("/calendar2.do")
	public String calendar2() {
		return "WEB-INF\\views\\a05_mvc\\a21_fullcalendar.jsp";
	}	
}
