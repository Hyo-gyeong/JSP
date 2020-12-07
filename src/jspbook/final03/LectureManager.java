package jspbook.final03;
import java.util.ArrayList;
import java.util.List;

public class LectureManager extends LectureBean{
	ArrayList<LectureBean> lectureList = new ArrayList<LectureBean>();
	private static final int times = 6;
	private static final int days = 5;
	private int[][] typeMatrix = new int[times][days];
	private int[][] titleMatrix = new int[times][days];
	private int[][] spanMatrix = new int[times][days];
	
	public int[][] getTypeMatrix() {
		return typeMatrix;
	}
	public int[][] getTitleMatrix() {
		return titleMatrix;
	}
	public int[][] getSpanMatrix() {
		return spanMatrix;
	}
	public void setTypeMatrix(int a, int b, int v) {
		typeMatrix[a][b] = v;
	}
	public void setTitleMatrix(int a, int b, int v) {
		titleMatrix[a][b] = v;
	}
	public void setSpanMatrix(int a, int b, int v) {
		spanMatrix[a][b] = v;
	}	
	
	public void add(LectureBean lb) {
		lectureList.add(lb);
		super.setTime(lb.getTime());
		super.setDay(lb.getDay());
		super.setTitle(lb.getTitle());
		super.setType(lb.getType());
		super.setConsecutive(lb.getConsecutive());
		buildMatrix();
	}
	public List<LectureBean> getLectureList(){
		return lectureList;
	}
	public void initMatrix() {
		for (int i = 0; i < times; i++)
			for (int j = 0; j < days; j++) {
				setTypeMatrix(i, j, 0);
				setTitleMatrix(i, j, -1);
				setSpanMatrix(i, j, 1);
			}
	}
	public void buildMatrix() {
		if (super.getTime() != -1) {
			setTypeMatrix(getTime()-1, getDay(), getType());
			setTitleMatrix(getTime()-1, getDay(), getTitle());
			if (getConsecutive() > 1) {
				setSpanMatrix(getTime()-1, getDay(), getConsecutive());
				for (int i = 1; i < getConsecutive(); i++)
					setSpanMatrix(getTime()-1+i, getDay(), 0);
			}
		}
	}
}
