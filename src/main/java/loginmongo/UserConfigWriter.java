package loginmongo;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by hsenid on 3/28/16.
 */
public class UserConfigWriter {

public void getPropertyConfig(){
        Properties prop = new Properties();
        InputStream input = null;

        try {

            input = new FileInputStream("config.properties");

            // load a properties file
            prop.load(input);

            // get the property value
            prop.getProperty("DB");
            prop.getProperty("DBCollection");
            prop.getProperty("username");
            prop.getProperty("password");

        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (input != null) {
                try {
                    input.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

    }
}
