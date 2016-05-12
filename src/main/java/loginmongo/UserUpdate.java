package loginmongo;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

import java.net.UnknownHostException;

/**
 * Created by hsenid on 4/27/16.
 */
public class UserUpdate {

    public DBObject deleteSelectedUser(DBObject dock) throws UnknownHostException {
        MongoClient mongo = new MongoClient("localhost", 27017);
        DB db = mongo.getDB("login_form");
        DBCollection table = db.getCollection("test_user1");
        table.remove(dock);
        return dock;

    }
    public void updateSelectedUser(DBObject dock) throws UnknownHostException {
        MongoClient mongo = new MongoClient("localhost", 27017);
        DB db = mongo.getDB("login_form");
        DBCollection table = db.getCollection("test_user1");
        table.createIndex(dock);
    }

}
