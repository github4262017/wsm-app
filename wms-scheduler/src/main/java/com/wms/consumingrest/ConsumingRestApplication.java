package com.wms.consumingrest;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collections;
import java.util.List;

//import org.apache.http.HttpStatus;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import com.wms.dao.restapisonyemployee.SonyEmployeeRestDAO;


@SpringBootApplication
@Repository
public class ConsumingRestApplication  {

	private static final Logger log = LoggerFactory.getLogger(ConsumingRestApplication.class);
	
	@Autowired
	private SonyEmployeeRestDAO sonyEmployeeRestDAO;      
	
	static final String URL_REST_API = "https://myapps.aws.sisc.sony.com.sg/APImyWorkflows/employee-project-mapping-details";  
	  
	public static void main(String[] args) {  
		//SpringApplication.run(ConsumingRestApplication.class, args);
		try {
			
		} catch (Exception e) {
			System.out.println("Exception ConsumingRestApplication main()"+e); 
		}
		
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
			//String url = "https://sard-slatrackerintest.myappsqa-sisc-sony.com/myWorkflowsApi/";
			String url = "https://myapps.aws.sisc.sony.com.sg/APImyWorkflows/employee-project-mapping-details";
			
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

		} catch (Exception ex) {
		    ex.printStackTrace();
		}
	}
		
}
