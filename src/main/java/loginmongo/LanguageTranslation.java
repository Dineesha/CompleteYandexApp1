package loginmongo;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/**
 * Created by hsenid on 3/16/16.
 */
public class LanguageTranslation extends HttpServlet {

    DomXmlParser parser;
    final static Logger logger = Logger.getLogger(DomXmlParser.class);

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BasicConfigurator.configure();
        String translated = null;
        parser = new DomXmlParser();
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            //e.printStackTrace();
            String er1=e.getMessage();
            logger.error("Exception thrown  :\" + e");
            logger.trace("exception :\" +er1");
        }
        String fromLanguage = request.getParameter("fromLang");
        String toLanguage = request.getParameter("toLang");
        String toTranslateText = request.getParameter("txttranslatefrom");

        String fromTranslateText = request.getParameter("txttranslateto");

        String apiUrl = "https://translate.yandex.net/api/v1.5/tr/translate?key=trnsl.1.1.20160314T055210Z.609ee89149686a99.22e2a4c8f48279cba64fe814237ef790791fd2c5&text="
        + toTranslateText + "&lang=" + fromLanguage + "-" + toLanguage;


        HttpClientCall submitTxt = new HttpClientCall();
        try {
            translated = parser.readResponse(submitTxt.sendGet(apiUrl));
        } catch (Exception e) {
            logger.info("return value is not inserted");


        }

        request.setAttribute("fromLang", fromLanguage);
        request.setAttribute("toLang", toLanguage);
        request.setAttribute("txttranslatefrom", toTranslateText);
        request.setAttribute("passValue", translated);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/success.jsp");

            rd.forward(request, response);

        }


    }


