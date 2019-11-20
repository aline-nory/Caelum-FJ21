package br.com.caelum.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory { 
	
	public Connection getConnection() {
			
		try {	
			return DriverManager.getConnection("jdbc:mysql://localhost/fj21?useSSL=false", "root", "0305");
		} catch (SQLException e){
			throw new RuntimeException(e);
			
		}
		
//		String driver = "com.mysql.cj.jdbc.Driver";
//		String url = "jdbc:mysql://localized/fj21?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
//		String user = "root"; 
//		String password = "0305";
//		
//	try {	
//		return DriverManager.getConnection(url, user, password);
//	} catch (SQLException e){
//		throw new RuntimeException(e);
//		
//	}
		
	}
	
}
