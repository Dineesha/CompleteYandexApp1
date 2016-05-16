package loginmongo;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by hsenid on 4/29/16.
 */
public class DeleteServlet extends HttpServlet {
    final static Logger logger = Logger.getLogger(DeleteServlet.class);

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
        ServletException, IOException {


            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String username = request.getParameter("val");

            String sql = "delete from user where username=\'" + username + "\';";

            Connection con = null;
            PreparedStatement st = null;

            try {
                con = Database.cpds.getConnection();
                st = con.prepareStatement(sql);
                int rs = st.executeUpdate();

                if (rs == 1) {
                    out.println(rs);
                }

            } catch (Exception ex) {
                logger.error("Error occured user deletion..", ex);
            } finally {
                try {
                    logger.trace("connection closed");
                    con.close();
                } catch (SQLException e) {
                    logger.fatal("Error while closing connection..");
                    e.printStackTrace();
                }
                try {
                    logger.trace(" Prepared statement closed");
                    st.close();
                } catch (SQLException e) {
                    logger.fatal("Error while closing prepared statement ", e);
                }
            }
        }

    }


