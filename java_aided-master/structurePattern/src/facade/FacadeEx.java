package facade;
//퍼사드 패턴(Facade Pattern) : 건물의 정면 또는 창구 라는 의미로  인터페이스를 만들어
//해당 되는 내용을 실행하기 위하여는 해당 창구나 경로를 통해서 들어와서 진행될 수 있도록 하는 디자인 패턴
public class FacadeEx {
    public static void main(String[] args) {
        PageMaker.makeWelcomePage("kkt09072@naver.com", "welcome.html");
    }
}