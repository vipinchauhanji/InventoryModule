package com.nacre.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.nacre.beans.Company;



public class CompanyDao {
	
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
	public static List<Company> getCompanyDetails(){
		List<Company> list=new ArrayList<Company>();
		
		try{
			Connection con=ConnectionDao.getConnection();
			PreparedStatement ps=con.prepareStatement(QueryConstants.Company_Select_Query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Company company=new Company();
				company.setCompanyId(String.valueOf(rs.getInt("companyid")));
				company.setCompanyName(rs.getString("companyname"));
				company.setContact(rs.getString("contact"));
				company.setCity(rs.getString("city"));
				company.setCountry(rs.getString("country"));
				company.setStreet(rs.getString("street"));
				company.setDistrict(rs.getString("district"));
				company.setStatus(rs.getString("status"));
				company.setMailId(rs.getString("mailid"));
				company.setState(rs.getString("state"));
				list.add(company);
			}
		}catch(Exception e){System.out.println(e);}
		return list;
	}
	
	// Method To insert Company's detail
	
	public static int addCompany(Company u){  
	    int status=0;  
	    try{  
	    	int companyId=Integer.parseInt(u.getCompanyId());
	        Connection con=ConnectionDao.getConnection(); 
	        PreparedStatement ps=con.prepareStatement(QueryConstants.Company_INSERT_QUERY);  
	        ps.setInt(1,companyId);  
	        ps.setString(2,u.getCompanyName()); 
	        ps.setString(3,u.getStreet()); 
	        ps.setString(4,u.getCity()); 
	        ps.setString(5,u.getDistrict()); 
	        ps.setString(6,u.getState()); 
	        ps.setString(7,u.getCountry()); 
	        ps.setString(8,u.getMailId()); 
	        ps.setString(9,u.getContact()); 
	        ps.setString(10,u.getStatus()); 
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  

}
