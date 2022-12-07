package factoryMethod;

public class Dog extends Animal {
	Dog() { }
	public Dog(String data){
		System.out.println("Dog Create");
		return;
	}
	public String toString() { return "Dog"; }
}