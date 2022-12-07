package flyweight;

import java.util.HashMap;

public class BigCharFactory {

    // 이미 만든 BigChar 인스턴스 관리
    private HashMap pool = new HashMap();

    private static BigCharFactory singleton = new BigCharFactory();

    private BigCharFactory() {
    }

    // 하나뿐인 인스턴스를 반환한다.
    public static BigCharFactory getInstance() {
        return singleton;
    }

    // BigChar의 인스턴스 생성 (공유)
    public synchronized BigChar getBigChar(char charName) {
        BigChar bigChar = (BigChar) pool.get("" + charName);
        if (bigChar == null) {
            bigChar = new BigChar(charName);
            pool.put("" + charName, bigChar);
        }
        return bigChar;
    }
}
