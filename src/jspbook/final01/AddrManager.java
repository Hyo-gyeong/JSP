package jspbook.final01;
import java.util.ArrayList;
import java.util.List;

public class AddrManager {
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	List<Object> array = new ArrayList<Object>();
	
	private int page = 0;
	
	public int getPage() {
		return page;
	}	
	public void setPage(int page) {
		this.page = page;
	}
	
	public void add(AddrBean ab) {
		array.add(ab);
		addrlist.add(ab);
	}
	public List<AddrBean> getAddrList(){
		return addrlist;
	}
}
