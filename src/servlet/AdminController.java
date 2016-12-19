package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.GestorAdmin;

@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ResultSet rs = null;
		
		String entrar = request.getParameter("entrar");
		String nombre = request.getParameter("user");
		String contrasena = request.getParameter("pw");
		
		request.getSession().setAttribute("session",nombre );
				
		rs = GestorAdmin.getAdminData(entrar, nombre, contrasena);
		
		request.getRequestDispatcher("admin/anadir.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
