package factoryMethod;

import java.util.Iterator;
import java.util.LinkedList;

public class MapEx {
	public static void main(String[] args) {
		LinkedList<String> lnkList = new LinkedList<String>();
		lnkList.add("Dog");
		lnkList.add("Cat");
		
		//lnkList = ["Dog", "Cat"]
		//팩토리 메소드를 사용하지 않았을 경우
		Iterator<String> iter = lnkList.iterator();
		while(iter.hasNext()){
			if(iter.equals("Dog")){
				Dog dog = new Dog();
				System.out.println(dog);
			} else if(iter.equals("Cat")){
				Cat cat = new Cat();
				System.out.println(cat);
			}
		}
		
		//팩토리 메소드를 사용하는 경우 - AnimalFactory.create()
		Iterator<String> facIter = lnkList.iterator();
		while(facIter.hasNext()){ //0, 1
			Animal animal = AnimalFactory.create(facIter.next());
			System.out.println(animal);
		}
		//팩토리 메소드 패턴을 활용하면, 다른 클래스의 수정없이 하나의 팩토리 클래스에 의해 만들어지므로
		//단일책임원칙이라는 개발 원칙이 잘 지켜질 수 있다.
	}
}