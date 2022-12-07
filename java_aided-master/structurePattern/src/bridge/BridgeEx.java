package bridge;
//브릿지 패턴(Bridge Pattern) : 기능 클래스와 구현 클래스 간의 교량 역할을 하는 클래스를 두어
//기능을 가진 것과 구현 역할을 동시에 하는 클래스로 재규정하여 사용하는 방식
public class BridgeEx {
    public static void main(String[] args) {
        Display display = new Display(
        		new StringDisplayImpl("Display Test"));
        CountDisplay countDisplay = new CountDisplay(
        		new StringDisplayImpl("CountDisplay Test"));
        RandomCountDisplay randomCountDisplay = 
        		new RandomCountDisplay(
        		new StringDisplayImpl("RandomCountDisplay Test"));
        display.display();
        countDisplay.multiDisplay(5);
        randomCountDisplay.randomDisplay(10);
    }
}