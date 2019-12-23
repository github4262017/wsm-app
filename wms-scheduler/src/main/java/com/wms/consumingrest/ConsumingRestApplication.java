package com.wms.consumingrest;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.URL;
import java.nio.charset.StandardCharsets;
//import java.awt.PageAttributes.MediaType;
import java.security.cert.X509Certificate;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collections;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.sql.DataSource;

//import org.apache.http.HttpStatus;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.jdbc.core.ParameterizedPreparedStatementSetter;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestOperations;
import org.springframework.web.client.RestTemplate;

import com.wms.constant.WMSConstant;
import com.wms.dao.WmsBaseDAO;
import com.wms.dao.floormap.FloorMapDAO;
import com.wms.dao.restapisonyemployee.SonyEmployeeRestDAO;
import com.wms.util.WMSDateUtil;

import sun.misc.BASE64Encoder;

import org.springframework.http.MediaType;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetAddress;


@SpringBootApplication
@Repository
public class ConsumingRestApplication extends WmsBaseDAO {

	private static final Logger log = LoggerFactory.getLogger(ConsumingRestApplication.class);
	private FloorMapDAO floorMapDAO;  
	@Autowired 
	DataSource dataSource;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}  
	
	@Autowired
	private SonyEmployeeRestDAO sonyEmployeeRestDAO;  
	
	static final String URL_REST_API = "https://sard-slatrackerintest.myappsqa-sisc-sony.com/myWorkflowsApi/";
	  
	public static void main(String[] args) {
		//SpringApplication.run(ConsumingRestApplication.class, args);
		try {
			//Certificate Exception
			//ConsumingRestApplication crs = new ConsumingRestApplication();
			//crs.getJsonRestAPIClient(); 
			                           
			//attatemplateBasicAuthentication(); //test1(); //pingHost("10.4.1.187", 8080, 2000);
			
		} catch (Exception e) {
			System.out.println("Exception ConsumingRestApplication main()"+e); 
		}
		
	} 
	
	private static HttpHeaders createHttpHeaders(String user, String password)
	{
	    String notEncoded = user + ":" + password; 
	    String encodedAuth = Base64.getEncoder().encodeToString(notEncoded.getBytes());
	    HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.APPLICATION_JSON);
	    headers.add("Authorization", "Basic " + encodedAuth);
	    //headers.setBasicAuth("user", "@egEigvZEO%NDyx*%H*bgJ^6#aL42gJJGQAxwVMCqI3VaYDdox"); 
	    return headers;
	}
	
	public List<SonyEmployeeDetailsREST> getJsonRestAPIClient() { 
		
		List<SonyEmployeeDetailsREST> sEmployeeDetails=null;
		try {
			
			SimpleClientHttpRequestFactory clientHttpRequestFactory = new SimpleClientHttpRequestFactory();
			Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("43.88.64.10", 8080));
			clientHttpRequestFactory.setProxy(proxy);    

			RestTemplate restTemplate = new RestTemplate(clientHttpRequestFactory);
			
			List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();        
			//Add the Jackson Message converter
			MappingJackson2HttpMessageConverter  converter = new MappingJackson2HttpMessageConverter();

			// Note: here we are making this converter to process any kind of response, 
			// not only application/*json, which is the default behaviour
			converter.setSupportedMediaTypes(Collections.singletonList(org.springframework.http.MediaType.ALL));         
			messageConverters.add(converter);  
			restTemplate.setMessageConverters(messageConverters); 
			
			//HttpHeaders headers = createHttpHeaders("user","@egEigvZEO%NDyx*%H*bgJ^6#aL42gJJGQAxwVMCqI3VaYDdox");
	        //HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);
	        
			String plainCreds = "user:@egEigvZEO%NDyx*%H*bgJ^6#aL42gJJGQAxwVMCqI3VaYDdox";
			byte[] plainCredsBytes = plainCreds.getBytes();
			String base64Creds = Base64.getEncoder().encodeToString(plainCreds.getBytes());
		    System.out.println("encodedString: " + base64Creds);
			System.out.println("Before Headers");
			HttpHeaders headers = new HttpHeaders();
			headers.add("Authorization", "Basic " + base64Creds);
			System.out.println("After headers");
			
			HttpEntity<Quote> entity = new HttpEntity<Quote>( headers); 
			
			ResponseEntity<Quote> response1 = restTemplate.exchange(URL_REST_API ,HttpMethod.POST,entity, Quote.class);
			Quote sonyEmployeeData= response1.getBody(); 
			
			sEmployeeDetails=sonyEmployeeData.getEmployeeDetails();   			
			/*for (SonyEmployeeDetailsREST employeedetails : sEmployeeDetails) {
				System.out.println("Employee_name"+employeedetails.getGid());  
				System.out.println("Email"+employeedetails.getEmail());  
				 
			}*/
			System.out.println("SonyEmployeeDetailsREST :"+sEmployeeDetails.size());
			sonyEmployeeRestDAO.batchInsertSonyEmployee(sEmployeeDetails, 2);        
						
			if (HttpStatus.OK == response1.getStatusCode()) {
		        System.out.println(response1);
		    } else {
		    	System.out.println("Error withSSLTesting");
		    }
		} catch (Exception e) {
			System.out.println("Rest API"+e);
		}
		return sEmployeeDetails; 
	}
	    
	public static void attatemplateBasicAuthentication() { 
		try { 
		    // request url  
		    //String url = "https://jsonplaceholder.typicode.com/posts";
			String url = "https://sard-slatrackerintest.myappsqa-sisc-sony.com/myWorkflowsApi/";
			
			/*RestTemplate restTemplate=new  RestTemplate();
			
			//restTemplate=restTemplate.basicAuthentication("user","@egEigvZEO%NDyx*%H*bgJ^6#aL42gJJGQAxwVMCqI3VaYDdox").build();
			System.out.println("restTemplate");
			String authStr = "username:password";
		    String base64Creds = Base64.getEncoder().encodeToString(authStr.getBytes());
			// create headers
		    System.out.println("Before Headers");
		    HttpHeaders headers = new HttpHeaders();
		    headers.setBasicAuth("user", "@egEigvZEO%NDyx*%H*bgJ^6#aL42gJJGQAxwVMCqI3VaYDdox");
		    headers.add("Authorization", "Basic " + base64Creds);
		    System.out.println("After headers");
		    // create request
		    HttpEntity request = new HttpEntity(headers);
		    System.out.println("Before postforObject");
			Quote quote = restTemplate.postForObject("https://sard-slatrackerintest.myappsqa-sisc-sony.com/myWorkflowsApi/", request, Quote.class);	
			System.out.println("After postforObject"); 
			
			ResponseEntity<ch.qos.logback.core.subst.Token> response = null;
		    TrustStrategy acceptingTrustStrategy = (X509Certificate[] chain, String authType) -> true;
		    SSLContext sslContext = org.apache.http.ssl.SSLContexts.custom()
		            .loadTrustMaterial(null, acceptingTrustStrategy).build();
		    SSLConnectionSocketFactory csf = new SSLConnectionSocketFactory(sslContext);
		    CloseableHttpClient httpClient = HttpClients.custom()
		            .setSSLSocketFactory(csf).build(); 
			
		    HttpComponentsClientHttpRequestFactory requestFactory = new HttpComponentsClientHttpRequestFactory();
		    //requestFactory.setHttpClient(httpClient);
		    requestFactory.setConnectTimeout(1 * 1000);
		    requestFactory.setReadTimeout(1 * 1000); */
			
			SimpleClientHttpRequestFactory clientHttpRequestFactory = new SimpleClientHttpRequestFactory();
			Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("43.88.64.10", 8080));
			clientHttpRequestFactory.setProxy(proxy);    

			RestTemplate restTemplate = new RestTemplate(clientHttpRequestFactory);
		    // create auth credentials
		    String authStr = "user:@egEigvZEO%NDyx*%H*bgJ^6#aL42gJJGQAxwVMCqI3VaYDdox";
		    String base64Creds = Base64.getEncoder().encodeToString(authStr.getBytes());

		    // create headers
		    HttpHeaders headers = new HttpHeaders();
		    headers.add("Authorization", "Basic " + base64Creds);

		    // create request
		    HttpEntity request = new HttpEntity(headers); 

		    // make a request
		    //ResponseEntity<String> response1 = new RestTemplate().exchange("http://localhost:8080/employees/" , HttpMethod.GET, request, String.class);
		    ResponseEntity<Object> response1 = new RestTemplate().exchange(url , HttpMethod.GET, request, Object.class);
		    
		    if (HttpStatus.OK == response1.getStatusCode()) {
		        System.out.println(response1);
		    } else {
		    	System.out.println("Error attatemplateBasicAuthentication");
		    }
		    System.out.println("json GET attatemplateBasicAuthentication"+response1.getBody());  

		} catch (Exception ex) {
		    ex.printStackTrace();
		}
	}
	
	public static void test1() {
		try {
			
			System.out.println("baeldung");
			RestTemplate restTemplate=new  RestTemplate();
			//RestTemplate restTemplate=restTemplateBuilder.basicAuthentication("user","@egEigvZEO%NDyx*%H*bgJ^6#aL42gJJGQAxwVMCqI3VaYDdox").build();
			System.out.println("restTemplate");
			String authStr = "username:password";
			String base64Creds = Base64.getEncoder().encodeToString(authStr.getBytes());
			// create headers
			System.out.println("Before Headers test1");
			HttpHeaders headers = new HttpHeaders();
			//headers.setBasicAuth("user", "@egEigvZEO%NDyx*%H*bgJ^6#aL42gJJGQAxwVMCqI3VaYDdox"); 
			headers.add("Authorization", "Basic " + base64Creds);
			System.out.println("After headers test1");
			// create request
			HttpEntity request = new HttpEntity(headers);
			System.out.println("Before postforObject test1");
			String quote = restTemplate.postForObject("https://sard-slatrackerintest.myappsqa-sisc-sony.com/myWorkflowsApi/", request, String.class); 	
			System.out.println("After postforObject test1");
			//log.info(quote.toString()); 
		} catch (Exception e) {
			System.out.println("Rest API test1"+e);
		}
	}
	/*
	@Bean
	public CommandLineRunner run() throws Exception {
		return args -> {
			/*Quote quote = restTemplate.getForObject(
					"https://gturnquist-quoters.cfapps.io/api/random", Quote.class);*/
	/*	try {
				System.out.println("start");
				RestTemplate restTemplate=new  RestTemplate();
				//RestTemplate restTemplate=restTemplateBuilder.basicAuthentication("user","@egEigvZEO%NDyx*%H*bgJ^6#aL42gJJGQAxwVMCqI3VaYDdox").build();
				System.out.println("restTemplate");
				String authStr = "username:password";
			    String base64Creds = Base64.getEncoder().encodeToString(authStr.getBytes());
				// create headers
			    System.out.println("Before Headers");
			    HttpHeaders headers = new HttpHeaders();
			    headers.setBasicAuth("user", "@egEigvZEO%NDyx*%H*bgJ^6#aL42gJJGQAxwVMCqI3VaYDdox"); 
			    headers.add("Authorization", "Basic " + base64Creds);
			    System.out.println("After headers");
			    // create request
			    HttpEntity request = new HttpEntity(headers);
			    System.out.println("Before postforObject");
				Quote quote = restTemplate.postForObject("https://sard-slatrackerintest.myappsqa-sisc-sony.com/myWorkflowsApi/", request, Quote.class);	
				System.out.println("After postforObject");
				//System.out.println("Rest API"+quote.toString());
				//log.info(quote.toString());
			} catch (Exception e) {
				c
			}
			
		};
	}  */
	
}
