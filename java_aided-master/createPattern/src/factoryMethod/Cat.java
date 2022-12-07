package factoryMethod;

public class Cat extends Animal {
	Cat() { }
	public Cat(String data){
		System.out.println("Dog Create");
		return;
	}
	public String toString() { return "Cat"; }
}
