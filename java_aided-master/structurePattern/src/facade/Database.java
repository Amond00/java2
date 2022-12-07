package facade;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class Database {

    private Database() {   }

    public static Properties getProperties(String dbname) {
        ClassLoader loader = Database.class.getClassLoader();
        String file = loader.getResource("facade/pagemaker/" + dbname + ".txt").getFile();
        Properties prop = new Properties();
        try {
            prop.load(new FileInputStream(file));
        } catch (IOException e) {
            System.out.println("Warning: " + file + " is not found.");
        }
        return prop;
    }
}