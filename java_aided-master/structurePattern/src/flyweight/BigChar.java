package flyweight;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class BigChar {
    // 큰 문자를 나타내는 문자열 ('#', '.', '\n'열)
    private String fontData;

    public BigChar(char charName) {
        try {
            ClassLoader loader = BigChar.class.getClassLoader();
            String file = loader.getResource("flyweight/big" + charName + ".txt").getFile();
            BufferedReader reader = new BufferedReader(new FileReader(file));
            String line;
            StringBuffer buf = new StringBuffer();
            while ((line = reader.readLine()) != null) {
                buf.append(line);
                buf.append("\n");
            }
            reader.close();
            this.fontData = buf.toString();
        } catch (IOException e) {
            this.fontData = charName + "?";
        }
    }

    // 큰 문자 표시을 표시한다.
    public void print() {
        System.out.print(fontData);
    }
}
