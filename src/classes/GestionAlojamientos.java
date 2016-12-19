package classes;

import java.sql.ResultSet;
import java.sql.SQLException;


import bd.MysqlConnect;

public class GestionAlojamientos {
	
	private static MysqlConnect c;


	public static ResultSet buscarLocalidad(String localidad) {//Esta funcion devuelve datos a la funcion del servlet BuscadorController
		//Establecemos la conexión con la BD
		c = MysqlConnect.getDbCon();	
		
		ResultSet rs=null;
		
		try {//Cogemos los datos de la BD
			rs = c.query("SELECT * FROM `alojamiento` WHERE localidad = '"+localidad+"'");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;//Devolvemos los datos
	}
	
	public static ResultSet detalleAlojamiento (String id){
		
		c = MysqlConnect.getDbCon();
		
		ResultSet rs=null;
		
		try {
			rs = c.query("SELECT * FROM alojamiento WHERE id = '"+id+"'");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
		
	}
	


}
