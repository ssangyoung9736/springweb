package springweb.a05_mvc.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class A02_DeptController {

	
	@RequestMapping("myDeptList.do")
	public String myDeptList() {
		return "WEB-INF\\views\\a05_mvc\\a02_deptList.jsp";
	}
}
