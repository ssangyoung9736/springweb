package a01_diexp.z08_mydb;

import java.util.List;

import a01_diexp.z08_mydb.vo.BuyInfo;
import a01_diexp.z08_mydb.vo.Emp;
import a01_diexp.z08_mydb.vo.Salgrade;
public interface A02_ExpDao {
	public List<Salgrade> getSalgrade();
	public List<Emp> getEmpList();
	public List<BuyInfo> getBuyInfo();
}
