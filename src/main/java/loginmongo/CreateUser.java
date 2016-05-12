package loginmongo;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import org.apache.log4j.Logger;

import java.net.UnknownHostException;

/**
 * Created by hsenid on 3/29/16.
 */
public class CreateUser {

    // String user1;
    String username;
    String password;
    final static Logger logger = Logger.getLogger(CreateUser.class);

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
        logger.trace(username);
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
        logger.info(password);
    }

    public void connectToDBForTest() throws UnknownHostException {
        /**** Connect to MongoDB ****/

        MongoClient mongo = new MongoClient("localhost", 27017);


        /**** Get database ****/

        DB db = mongo.getDB("logindata");

        /**** Get collection / table from 'testdb' ****/

        DBCollection table = db.getCollection("userinfo");

        /**** Insert ****/

        BasicDBObject doc = new BasicDBObject().
                append("username", username).
                append("password", password);


    }
    public void destroyUser(DBCollection table,BasicDBObject doc) {
        table.remove(doc);
    }
}
