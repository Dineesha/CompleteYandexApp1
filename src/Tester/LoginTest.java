package Tester;

import loginmongo.UserConfigWriter;
import loginmongo.Login;

import static org.testng.Assert.fail;

import org.testng.annotations.BeforeMethod;

import java.net.UnknownHostException;

public class LoginTest {
     @BeforeTest
     public void createUser() throws UnknownHostException {
         String un = "dinitest";
         String pw = "test";
         CreateUser user1 = new CreateUser();
         user1.setPassword(pw);
         user1.setUsername(un);
         user1.connectToDBForTest();
         LoginTest test = new LoginTest();
         test.testValidateQuery(un, pw);
     }

     @Test
     public void testValidateQuery() {
         System.out.println("logintest class");

         //DBCollection table = db.getCollection("userinfo");
         BasicDBObject searchQuery = new BasicDBObject();
         searchQuery.put("username", "dinitest");
         searchQuery.put("password", "wrong");
         Assert.assertEquals(searchQuery, false,"password is wrong ");






     }

     @Test
     public void test1() {
         System.out.println("testing errors");
     }

     @AfterTest
     public void destroyUser1(){


     }
      @BeforeMethod
     public void createUsernull(){
         CreateUser user1=new CreateUser();
         user1.setPassword(null);
         user1.setUsername(null);
     }
    Login validate = new Login();
    boolean res = false;


    public Object[][] loggedUser() {
        return new Object[][]{
                {"a", "1", true},
                {" ", " ", false},
                {" ", "1", false},
                {"a", " ", false},
                {"x", "1", false},
                {"a", "x", false},
                {"ab", "xx", false}
        };

    }

    @BeforeMethod

    public void setConnection() throws UnknownHostException {

        UserConfigWriter prop2 = new UserConfigWriter();

        String dburl = prop2.getProperty("db.url");
        String database = prop2.getproperty("db.database");
        String dbUname = prop2.getproperty("db.username");
        String dbPasswd = prop2.getproperty("db.password");
        MongoClient mongo = new MongoClient("localhost", 27017);

        /**** Get database ****/

      ///  DB db = mongo.getDB("logindata");

        /**** Get collection / table from 'testdb' ****/

       /// DBCollection table = db.getCollection("userinfo");

        /**** Insert ****/

           BasicDBObject document = new BasicDBObject();
            document.put("username", "a");
            document.put("password", "1");

           String user1 = table.insert(document);


    }
}
