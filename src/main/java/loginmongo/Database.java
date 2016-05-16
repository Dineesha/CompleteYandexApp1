package loginmongo;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Database {

    private static final Logger LOGGER = LogManager.getLogger(Database.class);

    /**
     * Database connection class
     */
    private static Connection conn;
    static ComboPooledDataSource cpds = new ComboPooledDataSource();
    private static PropertyReader propObj = new PropertyReader();


    public static void connectDatabase() {

        LOGGER.info("Connecting to database ..");

        cpds.setJdbcUrl(propObj.getproperty("c3p0.jdbcUrl","c3p0.properties"));
        cpds.setUser(propObj.getproperty("c3p0.user","c3p0.properties"));
        cpds.setPassword(propObj.getproperty("c3p0.password","c3p0.properties"));

        cpds.setInitialPoolSize(Integer.parseInt(propObj.getproperty("c3p0.initialPoolSize", "c3p0.properties")));
        cpds.setMaxPoolSize(Integer.parseInt(propObj.getproperty("c3p0.maxPoolSize","c3p0.properties")));
        cpds.setMinPoolSize(Integer.parseInt(propObj.getproperty("c3p0.minPoolsize","c3p0.properties")));
        cpds.setMaxStatements(Integer.parseInt(propObj.getproperty("c3p0.maxStatements", "c3p0.properties")));
        cpds.setMaxIdleTime(Integer.parseInt(propObj.getproperty("c3p0.maxIdleTime","c3p0.properties")));

    }
    public static ComboPooledDataSource getDataSource() {
        return cpds;
    }

    public static Connection getConn() {
        return conn;
    }

    public ResultSet runSql(String sql) throws SQLException {
        PreparedStatement sta = conn.prepareStatement(sql);
        return sta.executeQuery(sql);
    }


}
