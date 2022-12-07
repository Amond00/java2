package decorator;

public abstract class Display {

    // 열의 문자 수를 반환한다.
    public abstract int getColumns();

    // 행 수를 반환한다.
    public abstract int getRows();

    // 지정된 행의 문자열을 반환환다.
    public abstract String getRowText(int row);

    public void show() {
        for (int i = 0; i < getRows(); i++) {
            System.out.println(getRowText(i));
        }
    }
}