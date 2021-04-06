package service;
//IT19058160
//name : W.M.C.S Bandara
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.Customer;
import util.AppProperties;
import util.DBConnect;
import util.Helper;


public class CustomerService implements ICustomer{//public class name CustomerService which implements ICustomer
	//declaring
	public static final Logger log = Logger.getLogger(AppProperties.class.getName());
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement pmt=null;
    public boolean validatee(String username,String password) {
    	try {
    		con=DBConnect.getConnecton();//database connection
    		stmt=con.createStatement();
    		String sql = "select * from customer where username='"+username+"' and password='"+password+"'";
    		rs=stmt.executeQuery(sql);
    		if(rs.next())//if condition
    		{
    			isSuccess=true;
    		}
    		else {
    			isSuccess=false;
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    		log.log(Level.SEVERE, e.getMessage());
    	}
    	return isSuccess;//return values
    }
    public List<Customer> getDetails(String userName) {
	//impmentation of method
	ArrayList<Customer> cus = new ArrayList<>();
	
	try { 
		//database connection
	    con = DBConnect.getConnecton();
	    stmt = con.createStatement();
	    String sql = "select * from customer where username='"+userName+"' ";	    
	    rs = stmt.executeQuery(sql);
	    
	    if(rs.next()) {//if condition
		int id = rs.getInt(1);
		String name = rs.getString(2);
		String email = rs.getString(3);
		String phone = rs.getString(4);
		String userU = rs.getString(5);
		String passU = rs.getString(6);

		Customer c = new Customer(id,name,email,phone,userU,passU);//declaring object
		cus.add(c);
		
	    }
	    
	}
	catch(Exception e) {
	    e.printStackTrace();
	    log.log(Level.SEVERE, e.getMessage());
	}
	
	return cus;
	
    }
    public boolean insertCustomerCare(String from,String to,String subject ,String message){
    	//method implementation
    	
    	
    	String id = Helper.generateStudentIDs(getStudentId());
    	
		boolean isSuccess=false;
		
		
		//check if there are any errors
		try {
			//database connection
			con = DBConnect.getConnecton();
    		stmt = con.createStatement();
			String sql = "insert into sendmessage values('"+id+"','"+from+"' , '"+to+"','"+subject+"','"+message+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs > 0) {//if condition
				isSuccess = true;
				
			}
			else {
				isSuccess = false;
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			log.log(Level.SEVERE, e.getMessage());
		}
		
		return isSuccess;
		
	}
    
    private ArrayList<String> getStudentId() {

    	ArrayList<String> arrayLst1= new ArrayList<String>();//declearing
    	 
    	try {
    		 con = DBConnect.getConnecton();//Database connection
    	
    		 pmt=con.prepareStatement("select id from sendmessage");
    		 ResultSet rs = pmt.executeQuery();
    		 
    		 while(rs.next())//while loop
    		 {
    			 arrayLst1.add(rs.getString("id"));
    		 }
    	}catch(SQLException e) {
    		log.log(Level.SEVERE, e.getMessage());
    	}
    	finally 
    	{
    		try 
    		{
    			if(pmt != null)
    			 {
    				 pmt.close();
    			 }
    			 if(con != null)
    			 {
    				 con.close();
    			 }
    		}
    		catch(SQLException e)
    		{
    			log.log(Level.SEVERE, e.getMessage());
    		}
    	}
    	return arrayLst1;//return value
    }
    	 
    
  
    
    public boolean insertcustomer(String name, String email, String phone, String username, String password) {
    	//method implementation
    	boolean isSuccess = false;
    	
    	try {
    		//database connection
    		con = DBConnect.getConnecton();
    		stmt = con.createStatement();
    	    String sql = "insert into customer values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {//if condition
    			isSuccess = true;
    		} 
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    		log.log(Level.SEVERE, e.getMessage());
    	}
 	
    	return isSuccess;
    }
    
    public boolean updatecustomer(String id, String name, String email, String phone, String username, String password) {
    	//method implemenation
    	try {
    		//database connection
    		con = DBConnect.getConnecton();
    		stmt = con.createStatement();
    		String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    		log.log(Level.SEVERE, e.getMessage());
    	}
    	
    	return isSuccess;
    }
 
    public  List<Customer> getCustomerDetails(String Id) {
    	//method implemetation
    	int convertedID = Integer.parseInt(Id);//convert string to integer
    	
    	ArrayList<Customer> cus = new ArrayList<>();
    	
    	try {//try catch block
    		//connect with database
    		con = DBConnect.getConnecton();
    		stmt = con.createStatement();
    		String sql = "select * from customer where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String email = rs.getString(3);
    			String phone = rs.getString(4);
    			String username = rs.getString(5);
    			String password = rs.getString(6);
    			
    			Customer c = new Customer(id,name,email,phone,username,password);
    			cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    		log.log(Level.SEVERE, e.getMessage());
    	}	
    	return cus;	
    }
	public boolean deletemessage(String id) {
		//method implementation
		int idd = Integer.parseInt(id);//convert string to int
		boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnecton();
    		stmt = con.createStatement();
    		String sql = "delete from receivemessage where id='"+idd+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} 
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    		log.log(Level.SEVERE, e.getMessage());
    	}
 	
    	return isSuccess;
	}
}
