package flyweight;
//경량화 패턴(Flyweight Pattern) : 객체가 차지하고 있는 메모리 용량이나 자원을 최대한 공유하여 
//덩치를 작게 만드는 디자인 패턴
public class FlyweightEx {
    public static void main(String[] args) {
        if (args.length == 0) {
            System.out.println("Usage: java Main digits");
            System.out.println("Example: java Main 1234");
            System.exit(0);
        }
        BigString bs = new BigString(args[0]);
        bs.print();
    }
}
