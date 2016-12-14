package classes;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;

import bd.MysqlConnect;

public class GestionAlojamientos {
	
	

	public static void main(String[] args) {

		
		
	}

	public static void buscarLocalidad(String localidad) {
		MysqlConnect c = MysqlConnect.getDbCon();
		ResultSet rs=null;
		
		try {
			rs = c.query("SELECT * FROM `alojamiento` WHERE localidad = '"+localidad+"'");
			
			return;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
