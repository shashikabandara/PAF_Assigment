package servlets;
//IT19058160
//name : W.M.C.S Bandara
import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {//class named LoginServlet which inherits HttpServlet
	private static final long serialVersionUID = 1L;
	ICustomer c3=new CustomerService();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//method implementation	
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
	    String username = request.getParameter("uid");
	    String password = request.getParameter("pass");
	    boolean isTrue;
	    
	    isTrue = c3.validatee(username,password);
	    if(isTrue == true)
	    {
	    	List<Customer> cusDetails = c3.getDetails(username);
	    	request.setAttribute("cusDetails", cusDetails);
	    	 RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");//redirect to useraccount page
	    	 dis.forward(request, response);
	    }
	    else {
	    	// RequestDispatcher dis = request.getRequestDispatcher("logout.jsp");//redirect to useraccount page
	    	 //dis.forward(request, response);
	    	out.println("<script type='text/javascript'>");
	    	out.println("alert('Your username and password is incorrect please try again');");
	    	out.println("location='login.jsp'");
	    	out.println("</script>");
	    }
	    
	    
	    
	 
	    
	}

}
