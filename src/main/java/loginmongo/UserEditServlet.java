package loginmongo;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.UnknownHostException;


/**
 * Created by hsenid on 5/6/16.
 */
public class UserEditServlet extends HttpServlet {
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws UnknownHostException {

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String dob = request.getParameter("datepick");
        String phone = request.getParameter("phonenumber");
        String country = request.getParameter("country");
        String username = request.getParameter("uname");
        String password = request.getParameter("password");

        MongoClient mongo = new MongoClient("localhost", 27017);
        DB db = mongo.getDB("login_form");
        DBCollection table = db.getCollection("test_user1");

        BasicDBObject doc = new BasicDBObject();
        doc.put("fname", fname);
        doc.put("lname", lname);
        doc.put("email", email);
        doc.put("dob", dob);
        doc.put("phone", phone);
        doc.put("country", country);
        doc.put("username", username);
        doc.put("password", password);


        table.update(new BasicDBObject().append("username", username), doc);

    }
}
