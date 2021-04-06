package servlets;
//IT19058160
//name : W.M.C.S Bandara
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customer;
import service.CustomerService;
import service.ICustomer;

@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {//class named UpdateCustomerServlet which inherits HttpServlet
	private static final long serialVersionUID = 1L;
	ICustomer c4=new CustomerService();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//method implementation	
		String id = request.getParameter("cusid");//request the value inserted in the form. 
		String name = request.getParameter("name");//request the value inserted in the form. 
		String email = request.getParameter("email");//request the value inserted in the form. 
		String phone = request.getParameter("phone");//request the value inserted in the form. 
		String username = request.getParameter("uname");//request the value inserted in the form. 
		String password = request.getParameter("pass");//request the value inserted in the form. 
		
		boolean isTrue;
		
		isTrue = c4.updatecustomer(id, name, email, phone, username, password);
		
		if(isTrue == true) {//if condition
			
			List<Customer> cusDetails = c4.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");//redirect to useraccount page
			dis.forward(request, response);
		}
		else {
			List<Customer> cusDetails = c4.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");//redirect to useraccount page
			dis.forward(request, response);
		}
	}

}
