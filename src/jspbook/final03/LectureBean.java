package jspbook.final03;

public class LectureBean {
	static final String[] typeNames = {"", "전공필수", "전공선택", "교양", "자유선택"};
	static final String[] titleNames = { "웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론","자료구조", "네트워크", "창의와감성", "사회봉사" };
	static final String[] dayNames = {"월", "화", "수", "목", "금"};
	String str;
	
	public int type;
	private int title;
	private int day;
	private int time;
	private int consecutive;
	
	public LectureBean() {
		type = -1;
		title = -1;
		day = -1;
		time = -1;
		consecutive = -1;
	}
	
	public void setType(int type) {
		this.type = type;
	}
	public int getType() {
		return type;
	}
	
	public void setTitle(int title) {
		this.title = title;
	}
	public int getTitle() {
		return title;
	}
	
	public void setDay(int day) {
		this.day = day;
	}
	public int getDay() {
		return day;
	}
	
	public void setTime(int time) {
		this.time = time;
	}
	public int getTime() {
		return time;
	}
	
	public void setConsecutive(int consecutive) {
		this.consecutive = consecutive;
	}
	public int getConsecutive() {
		return consecutive;
	}
	
	public String toString() {
		if (type == -1)
			return "";
		else {
			str = typeNames[getType()] + "/" + titleNames[getTitle()] + "/" + dayNames[getDay()] + "/" + getTime() + "/" + getConsecutive();
			return str;
		}
	}
}
