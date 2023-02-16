package springweb.a05_mvc.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import springweb.a05_mvc.a03_dao.A20_CalendarDao;
import springweb.z01_vo.Calendar;

public class A20_CalendarService {
	@Autowired(required=false)
	private A20_CalendarDao dao;
	public List<Calendar> calList(){
		return dao.calList();
	}
}
