package proxy;
//프록시 패턴(Proxy Pattern) : 대리인 또는 대변인에 해당하는 클래스를 만들어
//직접 해당 클래스를 통하여 만드는 것이 아니라 여러 복합체와 같은 형태나 단순체에 해당하는 클래스를 통하여 객체를 
//디자인 하는 패턴
public class ProxyEx {
    public static void main(String[] args) {
        Printable p = new PrinterProxy("Alice");
        System.out.println("현재 이름은 " + p.getPrinterName() + " 입니다.");
        p.setPrinterName("Bob");
        System.out.println("현재 이름은 " + p.getPrinterName() + " 입니다.");
        p.print("Hello, world.");
    }
}
