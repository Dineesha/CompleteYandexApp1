package loginmongo;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Properties;

/**
 * Created by hsenid on 3/28/16.
 */
public class UserConfigSet {
   public void setUserConfig() throws IOException {

        Properties prop = new Properties();
        OutputStream output = null;

        try {

            output = new FileOutputStream("config.properties");

            // set the properties value
            prop.setProperty("DB", "logindata");
            prop.setProperty("DBCollection", "userinfo");
            prop.setProperty("username", "root");
            prop.setProperty("password", "123");

            // save properties to project root folder
            prop.store(output, null);

        } catch (IOException io) {
            io.printStackTrace();
        } finally {
            if (output != null) {
                try {
                    output.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

        }
    }
}
