package jspbook.final01;

public class AddrBean {
	private String username;
	private String tel;
	private String email;
	private String sex;
	private String group;
	private String favorite;
	String[] s_list = {"여","남"};
	String[] g_list = {"가족","친구","직장"};
	String[] f_list = {"미선택", "선택"};
	
	public String getUsername() {
		return username;
	}
	public String getTel() {
		return tel;
	}
	public String getEmail() {
		return email;
	}
	public String getSex() {
		return sex;
	}
	public String getGroup() {
		return group;
	}
	public String getFavorite() {
		return favorite;
	}	
	
	public void setUsername(String username) {
		this.username = username;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setSex(String sex) {
		int index = Integer.parseInt(sex);
		this.sex = s_list[index];
	}
	public void setGroup(String group) {
		int index = Integer.parseInt(group);
		this.group = g_list[index];
	}
	public void setFavorite(String favorite) {
		int index = Integer.parseInt(favorite);
		this.favorite = f_list[index];
	}
}
