package springweb.a05_mvc.a01_controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.a05_mvc.a02_service.A04_SalService;

@Controller
public class A04_SalController {

	@Autowired(required = false)
	private A04_SalService service;

	@GetMapping("salgradeInit.do")
	public String salgradeInit() {
		return "WEB-INF\\views\\a05_mvc\\a05_salgradeList.jsp";
	}
	@RequestMapping("salgradeList.do")
	public String salgradeList(
			@RequestParam(value="no[]",defaultValue ="[0]") List<Integer> no,
			@RequestParam(value="ck[]",defaultValue ="['N']") List<String> ck,
			@RequestParam(value="cont[]",defaultValue ="['']") List<String> cont,
			Model d) {
		System.out.println(no);
		System.out.println(ck);
		System.out.println(cont);
		//System.out.println(salParam.getGrade().length);
		//System.out.println(salParam.getGrade()[0]);
		d.addAttribute("slist", service.getSalList());
		return "pageJsonReport";
	}

	// 
	@GetMapping("salgrade.do")
	public String salgrade(@RequestParam("grade") int grade, Model d) {
		d.addAttribute("sal",service.getSalgrade(grade));
		return "pageJsonReport";
	}
	
}
