package decorator;

public class SideBorder extends Border {

    public SideBorder(Display display) {
        super(display);
    }

    public int getColumns() {
        // 문자수는 내용의 양측에 장식한 문자 수를 더한 수
        return 1 + display.getColumns() + 1;
    }

    public int getRows() {
        // 행 수는 내용의 행 수와 동일
        return display.getRows();
    }

    public String getRowText(int row) {
        return "*" + display.getRowText(row) + "*";
    }
}
