package loginmongo;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;

import javax.net.ssl.HostnameVerifier;
import java.io.IOException;
import java.io.InputStream;

public class HttpClientCall {
    private final String USER_AGENT = "Mozilla/5.0";
    final static Logger logger = Logger.getLogger(HttpClientCall.class);

    public static void main(String[] args) throws Exception {

        HttpClientCall http = new HttpClientCall();
        //http.sendGet();
        System.out.println("Testing 1 - Send Http GET request");


        // System.out.println("\nTesting 2 - Send Http POST request");
        // http.sendGet();

    }

    // HTTP GET request
    public  InputStream sendGet(String apiUrl) throws IOException {
        BasicConfigurator.configure();
        //handle ssl socket exception
        HostnameVerifier hostnameVerifier = org.apache.http.conn.ssl.SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER;
        SchemeRegistry registry;
        registry = new SchemeRegistry();
        SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
        socketFactory.setHostnameVerifier((X509HostnameVerifier) hostnameVerifier);
        registry.register(new Scheme("https", socketFactory, 443));


        String url = apiUrl;

        HttpClient client = new DefaultHttpClient();
        HttpGet request = new HttpGet(url);

        // add request header
        request.addHeader("User-Agent", USER_AGENT);

        HttpResponse response = null;
        try {
            response = client.execute(request);
        } catch (IOException e) {
            e.printStackTrace();
            logger.error("network i/o problem");

        }

        logger.info("\nSending 'GET' request to URL : " + url);
        logger.info("Response Code : " +
                response.getStatusLine().getStatusCode());
        //InputStream input = response.getEntity().getContent();
        InputStream input = null;

        input = response.getEntity().getContent();



        return input;




    }


}
