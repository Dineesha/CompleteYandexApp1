package loginmongo;

/**
 * Created by hsenid on 3/16/16.
 */

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.InputStream;

public class DomXmlParser {

	final static Logger logger = Logger.getLogger(DomXmlParser.class);


	public String readResponse(InputStream input) throws Exception {

		BasicConfigurator.configure();

		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
		Document doc = dBuilder.parse(input);



		logger.info("Root element :" + doc.getDocumentElement().getNodeName());
//Get text element extracted from  response
		NodeList nList = doc.getElementsByTagName("text");



		String passValue = nList.item(0).getTextContent();

		logger.info(passValue);
		return passValue;


	}
}
