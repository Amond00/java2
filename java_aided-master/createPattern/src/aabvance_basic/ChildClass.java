package aabvance_basic;

public class ChildClass extends BasicClass {
	public ChildClass(){ 
		//int point = super.point;  //부모 클래스의 멤버 속성인 point를 접근
		super(1,"lee",50);	//부모 클래스의 매개변수가 세 개인 생성자를 호출
	}
	public ChildClass(int num){ 
		super(num,"lee");
	}
}
