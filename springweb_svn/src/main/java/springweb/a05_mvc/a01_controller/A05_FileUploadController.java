package springweb.a05_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import springweb.a05_mvc.a02_service.A05_FileService;
import springweb.a05_mvc.a02_service.A06_FileSerice;

@Controller
public class A05_FileUploadController {
	@Autowired(required = false)
	private A05_FileService service;
	// 
	@GetMapping("/uploadFrm.do")
	public String uploadFrm() {
		return "WEB-INF\\views\\a05_mvc\\a10_fileUpload.jsp";
	}
	@PostMapping("/upload.do")
	public String upload(@RequestParam("report") 
							MultipartFile report, Model d) {
		System.out.println("##### 서버까지 온 파일:"+
							report.getOriginalFilename());
		if(service.uploadFile(report) != null) {
			d.addAttribute("msg", "업로드 성공");
		}
		return "WEB-INF\\views\\a05_mvc\\a10_fileUpload.jsp";
	}	
	// uploadFrm2.do 
	// upload2.do
	// a11_fileUpload2.jsp
	// A06_FileSerice.java로 파일 업로드 되게 처리해보세요
	// 업로드 경로도 webapp/z02_upload/
	// value = "name", required = false
	@Autowired(required = false)
	private A06_FileSerice service2;
	
	// get/post방식 한번에 처리할 때..
	@RequestMapping("/upload3.do")
	public String upload2(@RequestParam(value="report", required = false) 
							MultipartFile report, Model d) {
		if(report!=null && service2.uploadFile(report) != null) {
			d.addAttribute("msg", "업로드 성공");
		}		
		return "WEB-INF\\views\\a05_mvc\\a12_fileUpload.jsp";
	}				
	
	
}
