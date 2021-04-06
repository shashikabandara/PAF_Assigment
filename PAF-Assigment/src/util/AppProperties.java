package util;
//IT19058160
//name : W.M.C.S Bandara

import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

//properties  files
//created a property file to input data to config.properties
public class AppProperties {
	
	public static Properties prop = new Properties();
	
	public static final Logger log = Logger.getLogger(AppProperties.class.getName());
	

	
	static{
		
		try {
			prop.load(AppProperties.class.getResourceAsStream("config.properties"));
		}
		catch(IOException e) {
			e.printStackTrace();
			log.log(Level.SEVERE, e.getMessage());
		}

		
	}
	
}
