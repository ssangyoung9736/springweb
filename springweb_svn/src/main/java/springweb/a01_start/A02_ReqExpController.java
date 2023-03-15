package springweb.a01_start;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
// springweb2.a01_start.A02_ReqExpController
@Controller
public class A02_ReqExpController {

	// http://localhost:7080/springweb/call01.do?name=홍길동
	@RequestMapping("/call01.do")
	public String call01(@RequestParam("name") String name) {
		System.out.println("####이름:"+name);
		return "";
	}	
	// http://localhost:7080/springweb/call02.do?age=25
	@RequestMapping("/call02.do")
	public String call02(@RequestParam("age") int age) {
		System.out.println("####나이:"+age);
		return "";
	}	
	// http://localhost:7080/springweb/call03.do?name=홍길동&age=25&loc=서울
	@RequestMapping("/call03.do")
	public String call03( @RequestParam("name") String name,
						  @RequestParam("age") int age,
						  @RequestParam("loc") String loc
							
			) {
		System.out.println("####이름:"+name);
		System.out.println("####나이:"+age);
		System.out.println("####사는곳:"+loc);
		return "";
	}	
	// http://localhost:7080/springweb/call04.do?num01=30&num02=40
	// 로그창에 30 + 40 = 70 출력
	@RequestMapping("/call04.do")
	public String call04(@RequestParam("num01") int num01, 
						 @RequestParam("num02") int num02
						) {
		System.out.println(num01+" + "+ num02+" = "+(num01+num02));
		return "";
	}
	// 기본 배열전달
	// http://localhost:7080/springweb/call05.do?no=100&no=200&no=300&ck=Y&ck=N&ck=Y&cont=내용&cont=&cont=수정
	@RequestMapping("/call05.do")
	public String salgradeList1(
			@RequestParam(value="no",defaultValue ="[0]") List<Integer> no,
			@RequestParam(value="ck",defaultValue ="['']") List<String> ck,
			@RequestParam(value="cont",defaultValue ="['']") List<String> cont,
			Model d) {
		System.out.println(no);
		System.out.println(ck);
		System.out.println(cont);
		return "";
	}	
	
	// 배열데이터 ajax 전송시(post방식)
	// 		type:"post",
	//  	data:{ no:[10,20,30],ck:['Y','N','N'],cont:['내용','수정','변경']}
	@RequestMapping("/call06.do")
	public String salgradeList2(
			@RequestParam(value="no[]",defaultValue ="[0]") List<Integer> no,
			@RequestParam(value="ck[]",defaultValue ="['N']") List<String> ck,
			@RequestParam(value="cont[]",defaultValue ="['']") List<String> cont,
			Model d) {
		System.out.println(no);
		System.out.println(ck);
		System.out.println(cont);
		return "";
	}
	
	
}
