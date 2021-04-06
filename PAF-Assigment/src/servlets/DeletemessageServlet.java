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

@WebServlet("/DeletemessageServlet")
public class DeletemessageServlet extends HttpServlet{//class named DeletemessageServlet which inherits HttpServlet
	ICustomer c2=new CustomerService();
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//method implementation	
		String id = request.getParameter("d");
		
		boolean isTrue;
		
		isTrue=c2.deletemessage(id);
		
		if(isTrue == true) {//if condition
			RequestDispatcher dis = request.getRequestDispatcher("receivemessage.jsp");//redirect to receivemessage page
			dis.forward(request, response);
		} 
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");//redirect to unsuccess page
			dis2.forward(request, response);
		}
		
	
	}

}
