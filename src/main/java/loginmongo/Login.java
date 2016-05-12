package loginmongo;

/**
 * Created by hsenid on 3/14/16.
 */

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.mongodb.*;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.beans.PropertyVetoException;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.UnknownHostException;
import java.sql.SQLException;

public class Login extends HttpServlet {
    final static Logger logger = Logger.getLogger(Login.class);

    @Override
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response) throws IOException {

       /* PooledDataSource pds=new PooledDataSource();


        try {
            pds.createDataSource();
        } catch (PropertyVetoException e) {
            logger.error("property To Exception thrown in Pooled data source");
        }*/
        BasicConfigurator.configure();
        response.setContentType("text/html");

        String username = request.getParameter("form-username"); // get the name entered by user's input
        String password = request.getParameter("form-password"); //get the password entered by user's input



        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        HttpSession session = request.getSession(false);
        if(session!=null)
            session.setAttribute("name", username);

        try {
            if(MongoDBConListener.validate(username, password)){
                RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
                rd.forward(request,response);
            }
            else{
                out.print("<p style=\"color:red\">Sorry username or password error1</p>");
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.include(request,response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        }

        out.close();
    }
}



