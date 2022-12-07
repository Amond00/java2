package decorator;

public class FullBorder extends Border {

    public FullBorder(Display display) {
        super(display);
    }

    public int getColumns() {
        // 문자수는 내용의 양측에 좌우의 장식한 문자 수를 더한 수
        return 1 + display.getColumns() + 1;
    }

    public int getRows() {
        // 행수는 내용의 행수에 상하의 장식한 문자 수을 더한 수
        return 1 + display.getRows() + 1;
    }

    public String getRowText(int row) {
        if (row == 0) {
            // 상단 테두리
            return "+" + makeLine('-', display.getColumns()) + "+";
        } else if (row == display.getRows() + 1) {
            // 하단 테두리
            return "+" + makeLine('-', display.getColumns()) + "+";
        } else {
            // 그밖에
            return "|" + display.getRowText(row - 1) + "|";
        }
    }

    private String makeLine(char ch, int count) {
        StringBuffer buf = new StringBuffer();
        for (int i = 0; i < count; i++) {
            buf.append(ch);
        }
        return buf.toString();
    }
}