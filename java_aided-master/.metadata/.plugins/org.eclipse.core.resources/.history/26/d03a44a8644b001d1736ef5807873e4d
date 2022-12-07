package factoryMethod;
//Factory Method : 객체의 이름을 문자열로 받아 해당 별도의 객체를 생성(create)하는 메소드를 두고,
//그 메소드를 호출하면, 자동으로 공장처럼 객체가 생성될 수 있도록 하는 방식
public class AnimalFactory {
	static Animal create(String str){
		if(str.equals("Dog")){
			return new Dog(str);
		} else if(str.equals("Cat")){
			return new Cat(str);
		} else if(str.equals("Other")){
			return new Animal();
		}
		return null;
	}
}
