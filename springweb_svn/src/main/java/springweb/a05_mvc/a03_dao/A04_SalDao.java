package springweb.a05_mvc.a03_dao;

import java.util.List;

import springweb.z01_vo.Salgrade;

// springweb.a05_mvc.a03_dao.A04_SalDao
public interface A04_SalDao {
	public List<Salgrade> getSalList();
	public Salgrade getSalgrade(int grade);

}
