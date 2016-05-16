package loginmongo;

import org.apache.log4j.Logger;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.UnknownHostException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Set;


/**
 * Created by hsenid on 4/26/16.
 */
public class SearchServlet extends HttpServlet {
    final static Logger logger = Logger.getLogger(SearchServlet.class);

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
       // String searchName = request.getParameter("form-searchname");
        PrintWriter out = response.getWriter();
        String sql;

        String params = request.getParameter("form-searchname");

        sql = "select * from user where username LIKE \'%" + params + "%\';";

        JsonObject jsonObj;
        JsonArray jsonArray = new JsonArray();
        Connection con = null;
        PreparedStatement st;
        ResultSet rs;
        ResultSet rs2;
        //ResultSet rs3;

        try {
            con = Database.cpds.getConnection();
            st = con.prepareStatement(sql);
            rs = st.executeQuery();

            while (rs.next()) {
                jsonObj = new JsonObject();
                jsonObj.addProperty("username", rs.getString(1));
                jsonObj.addProperty("fname", rs.getString(3));
                jsonObj.addProperty("lname", rs.getString(4));
                jsonObj.addProperty("dob", rs.getString(5));
                jsonObj.addProperty("phone", rs.getString(6));
                jsonObj.addProperty("country", rs.getString(7));
                jsonObj.addProperty("email", rs.getString(9));

                String citysql = "select city from city where city_id=" + Integer.parseInt(rs.getString(8)) + ";";
                st = con.prepareStatement(citysql);
                rs2 = st.executeQuery();

                while (rs2.next()) {
                    jsonObj.addProperty("city", rs2.getString("city"));
                }


                jsonArray.add(jsonObj);
            }
            out.println(jsonArray);

        } catch (SQLException ex) {
            logger.error("Error in username validate method..", ex);
        } finally {
            try {
                logger.trace("Closing  connection..");
                con.close();
            } catch (SQLException e) {
                logger.fatal("Error while closing connection..");
                e.printStackTrace();
            }
        }

        }

    }



