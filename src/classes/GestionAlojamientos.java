package classes;

import java.sql.ResultSet;
import java.sql.SQLException;


import bd.MysqlConnect;

public class GestionAlojamientos {
	
	private static MysqlConnect c;


	public static ResultSet buscarLocalidad(String localidad) {
		
		c = MysqlConnect.getDbCon();	
		
		ResultSet rs=null;
		
		try {
			rs = c.query("SELECT * FROM `alojamiento` WHERE localidad = '"+localidad+"'");
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

}
