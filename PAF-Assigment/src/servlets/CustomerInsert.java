package servlets;
//IT19058160
//name : W.M.C.S Bandara
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CustomerService;
import service.ICustomer;




@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	
	ICustomer c1=new CustomerService();
	private static final long serialVersionUID = 1L;

//this method is beign used to insert the reply message send by customer are agent to the database
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//method implemetation
		String from = request.getParameter("from");//request the value inserted in the form. 
		String to = request.getParameter("to");//request the value inserted in the form. 
		String subject = request.getParameter("subject");//request the value inserted in the form. 
		String message = request.getParameter("message");//request the value inserted in the form. 
		
		
		boolean isTrue;
		
		isTrue=c1.insertCustomerCare(from, to, subject, message);//return true or false.
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("receivemessage.jsp");//redirected to recreivemessage page
			dis.forward(request, response);
		} 
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("customerinsert.jsp");//redirected to customerinsert page
			dis2.forward(request, response);
		}
		
		
	}

}

