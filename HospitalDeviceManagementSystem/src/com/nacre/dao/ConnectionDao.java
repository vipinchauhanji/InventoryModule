package com.nacre.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDao {

	
	public static void main(String [] args ) 
	{
		
		System.out.print(ConnectionDao.getConnection());
	}
	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		}catch(Exception e){System.out.println(e);}
		return con;
	}
}
