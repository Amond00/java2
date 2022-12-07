package aabvance_basic;

public class InhClass extends AbstractClass {

	@Override
	public void method1() {	
		//추상체에서 상속받은 추상 메소드는 반드시 구현체에서 구현 내용을 기술
		//추상메소드이므로 반드시 오버라이딩하여 활용해야 함
		System.out.println("메소드1");
	}

	public void method2() {  //AbstractClass와는 전혀 무관한 일반 메소드

	}	
}
