package loginmongo;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertyReader {

    private static final Logger LOGGER = LogManager.getLogger(PropertyReader.class);

    Properties properties = new Properties();
    ClassLoader classLoader = getClass().getClassLoader();

    public String getproperty(String prop, String fileName) {

        InputStream stream = classLoader.getResourceAsStream(fileName);

        try {
            LOGGER.info("Loading properties" + prop);
            properties.load(stream);
        } catch (IOException e) {
            LOGGER.error("Error while getting properties..");
        }
        finally {
            if (stream != null) {
                try {
                    LOGGER.trace("Closing property stream..");
                    stream.close();
                } catch (IOException ex) {
                    LOGGER.fatal("Error while closing property stream..", ex);
                }
            }
        }
        return properties.getProperty(prop);
    }
}
