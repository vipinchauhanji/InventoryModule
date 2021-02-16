package com.nacre.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.nacre.beans.Company;



public class InventoryDao {
	
	public static void main(String [] args ) 
	{
		InventoryDao.selecttest();
		
	}
	// method to select all details
	
	public static void selecttest(){
		
		
		try{
			Connection con=ConnectionDao.getConnection();
			PreparedStatement ps=con.prepareStatement(QueryConstants.Company_Select_Query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				
				System.out.println(rs.getInt("companyid"));
				System.out.println(rs.getString("companyname"));
				System.out.println(rs.getString("contact"));
				System.out.println(rs.getString("city"));
				System.out.println(rs.getString("country"));
				System.out.println(rs.getString("street"));
				System.out.println(rs.getString("district"));
				System.out.println(rs.getString("status"));
				System.out.println(rs.getString("mailid"));
				System.out.println(rs.getString("state"));
				
			}
		}catch(Exception e){System.out.println(e);}
		
	}
	
	//TODO generate interfaces for all methods 
	

}
