package loginmongo;

import com.mchange.v2.c3p0.*;
import org.apache.log4j.Logger;


import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.sql.SQLException;

/**
 * Created by hsenid on 4/12/16.
 */
public class PooledDataSource {
    final static Logger logger = Logger.getLogger(HttpClientCall.class);

    public ComboPooledDataSource createDataSource() throws PropertyVetoException {

        ComboPooledDataSource cpds = new ComboPooledDataSource();
            cpds.setDriverClass("org.postgresql.Driver"); //loads the jdbc driver
            cpds.setJdbcUrl( "jdbc:postgresql://localhost/login_form" );
            cpds.setUser("dbuser");
            cpds.setPassword("dbpassword");

logger.info("connection established pooled data");
       /* cpds.setMinPoolSize(5);
        cpds.setAcquireIncrement(5);
        cpds.setMaxPoolSize(20);
        cpds.setMinPoolSize(5);
        cpds.setAcquireIncrement(5);
        cpds.setMaxPoolSize(20);*/
        return cpds;

    }
    static void cleanup(DataSource ds) throws SQLException {
   /* // make sure it's a c3p0 PooledDataSource
    if ( ds instanceof PooledDataSource) {
        PooledDataSource pds = (PooledDataSource) ds;
        pds.close();
    } else
        //System.err.println("Not a c3p0 PooledDataSource!");
        logger.error("Not a c3p0 PooledDataSource!");*/
        DataSource ds_pooled = null;
        try {
            DataSource ds_unpooled = DataSources.unpooledDataSource("jdbc:postgresql://localhost/login_form", "usernm1", "testpw1");
            ds_pooled = DataSources.pooledDataSource( ds_unpooled );

            } finally { DataSources.destroy( ds_pooled ); }
    }
}