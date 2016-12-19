package servlet;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.GestionAlojamientos;


@WebServlet("/DetalleController")
public class DetalleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DetalleController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ResultSet rs = null;
		
		String id = request.getParameter("id");
		
		rs = GestionAlojamientos.detalleAlojamiento(id);
		
		request.setAttribute("detalle", rs);
		request.getRequestDispatcher("html/detalle.jsp").forward(request, response);
		
	}


	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
