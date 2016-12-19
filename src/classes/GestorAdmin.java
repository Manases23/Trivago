package classes;

import java.sql.ResultSet;

import bd.MysqlConnect;

public class GestorAdmin {
	
	private static MysqlConnect c;


	public static ResultSet getAdminData(String entrar, String nombre, String contrasena){
		c = MysqlConnect.getDbCon();

		ResultSet rs = null;
		try {
			
			rs = c.query("SELECT usuario, contrasena FROM administrador WHERE usuario = '"+nombre+"' AND contrasena = '"+contrasena+"'");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.print("");
		return rs;
		
	}
	
}
