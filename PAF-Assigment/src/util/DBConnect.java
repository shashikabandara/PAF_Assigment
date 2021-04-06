package util;
//IT19058160
//name : W.M.C.S Bandara
import java.sql.Connection;
import java.sql.DriverManager;
//this class  used to connect to the database
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnect {

	//declare variables
	public static final Logger log = Logger.getLogger(AppProperties.class.getName());

	private static Connection con;
	
	public static Connection getConnecton() {
		//implement methods
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/assigment", "root", ""); 
			//For testing
			System.out.print("Successfully connected"); 
			
			
		}
		catch(Exception e)
		{
			System.out.println("Database connection is not success!");
			log.log(Level.SEVERE, e.getMessage());
		}
		return con;
	}
}
