package servlet;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.GestionAlojamientos;

/**
 * Servlet implementation class BuscadorController
 */
@WebServlet("/BuscadorController")
public class BuscadorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscadorController() {
        super();
    
    }

    
    
    
    
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ResultSet rs=null;
		String localidad = request.getParameter("buscar");
		
		GestionAlojamientos.buscarLocalidad(localidad);
		request.setAttribute("alojamientos", rs);
		
		request.getRequestDispatcher("html/listado.jsp").forward(request, response);
		
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
