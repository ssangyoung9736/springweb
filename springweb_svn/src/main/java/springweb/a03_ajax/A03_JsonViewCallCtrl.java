package springweb.a03_ajax;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import springweb.z01_vo.Dept;

@Controller
public class A03_JsonViewCallCtrl {

	@GetMapping("callJson01.do")
	public String calljson01(Model d) {
		d.addAttribute("json01", new Dept(10,"인사","서울"));
		return "pageJsonReport";
	}
	
	// ex) callJson02.do  Person객체를 json데이터로 출력하세요
	
	
}
