package sample03javabean;

public class Bean01 {
	private String value1;
	private int value2;
	private int value3;
	private int value4;
	
	// 생성자를 작성하지 않으면 기본생성자를 자동추가됨
	
	public String getValue1() {
		return value1;
	}
	public void setValue1(String value1) {
		this.value1 = value1;
	}
	public int getValue2() {
		return value2;
	}
	public void setValue2(int value2) {
		this.value2 = value2;
	}
	
	public int getValue3() {
		return value3;
	}
	
	public void setValue3(int value3) {
		this.value3 = value3;
	}
	
	public int getVal() {
		return value4;
	}
	
	public void setVal(int val) {
		this.value4 = val;
	}
	
}
