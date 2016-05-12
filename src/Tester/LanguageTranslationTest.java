package Tester;

import loginmongo.DomXmlParser;
import loginmongo.LanguageTranslation;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

import static org.testng.Assert.fail;

/**
 * Created by hsenid on 4/4/16.
 */
public class LanguageTranslationTest {
    LanguageTranslation tr = new LanguageTranslation();
    boolean reply =false;
   // DomXmlParser translation = new DomXmlParser();

    @DataProvider(name = "text")
    public Object[][] text() {

        return new Object[][]{
                {"en", "fr", "tree","arbre"},
        };
    }

    @Test(dataProvider = "text")
    public void testTranslation(String fromLang, String toLang, String toTranslateText, String exp) {

        DomXmlParser translation = new DomXmlParser();
        InputStream stream1 = new ByteArrayInputStream(fromLang.getBytes(StandardCharsets.UTF_8));
        InputStream stream2 = new ByteArrayInputStream(toLang.getBytes(StandardCharsets.UTF_8));
        InputStream stream3 = new ByteArrayInputStream(toTranslateText.getBytes(StandardCharsets.UTF_8));

        try {
            String trText = translation.readResponse(stream1);
            Assert.assertEquals(trText, exp, "Correct translation");
            System.out.println(toTranslateText);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Test
    public void  conflictFromLanguage(){
        DomXmlParser translation = new DomXmlParser();
        InputStream stream1 = new ByteArrayInputStream("fr".getBytes(StandardCharsets.UTF_8));
        InputStream stream2 = new ByteArrayInputStream("en".getBytes(StandardCharsets.UTF_8));
        InputStream stream3 = new ByteArrayInputStream("tree".getBytes(StandardCharsets.UTF_8));
        try{
            reply = Boolean.parseBoolean(translation.readResponse(stream1));
        }catch (Exception ex){
            fail();
        }
        Assert.assertEquals(reply,false,"Language translated conflict");
    }

    @Test
    public void  conflictToLanguage(){
        DomXmlParser translation = new DomXmlParser();
        InputStream stream1 = new ByteArrayInputStream("en".getBytes(StandardCharsets.UTF_8));
        InputStream stream2 = new ByteArrayInputStream("fr".getBytes(StandardCharsets.UTF_8));
        InputStream stream3 = new ByteArrayInputStream("tree".getBytes(StandardCharsets.UTF_8));
        try{
            reply = Boolean.parseBoolean(translation.readResponse(stream1));
        }catch (Exception ex){
            fail();
        }
        Assert.assertEquals(reply,false,"conflict ToLanguage");
    }

    @Test
    public void  nullTranslateText(){
        DomXmlParser translation = new DomXmlParser();
        InputStream stream1 = new ByteArrayInputStream("en".getBytes(StandardCharsets.UTF_8));
        InputStream stream2 = new ByteArrayInputStream("fr".getBytes(StandardCharsets.UTF_8));
        InputStream stream3 = new ByteArrayInputStream("".getBytes(StandardCharsets.UTF_8));
        try{
            reply = Boolean.parseBoolean(translation.readResponse(stream1));
        }catch (Exception ex){
            fail();
        }
        Assert.assertEquals(reply,false,"null input text");
    }


}
