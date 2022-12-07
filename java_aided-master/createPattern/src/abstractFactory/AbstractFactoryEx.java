package abstractFactory;
//추상 팩토리 패턴 : 팩토리 메소드 패턴은 공장처럼 팩토리 메소드 클래스의 해당 메소드에 의해 인스턴스가
//선택적으로 생성되는데, 추상 팩토리 패턴도 이와 같지만, 
//팩토리가 클래스가 아닌 인터페이스 또는 추상화 클래스로 이루어진다는 차이점이 있을 뿐이다.
public class AbstractFactoryEx {
	public static void main(String[] args) {
		Computer pc = ComputerFactory.getComputer(new PCFactory("2 GB","500 GB","2.4 GHz"));
		Computer server = ComputerFactory.getComputer(new ServerFactory("16 GB","1 TB","2.9 GHz"));
		System.out.println("AbstractFactory PC Config::"+pc);
		System.out.println("AbstractFactory Server Config::"+server);
	}
}
