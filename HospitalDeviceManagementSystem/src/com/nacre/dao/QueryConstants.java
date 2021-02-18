package com.nacre.dao;

public class QueryConstants {
	
	// Queryes for Company
	
	// Select query for Company 
	public final static String Company_Select_Query="Select * from company ";
	// Insert Query for company
	public final static String Company_INSERT_QUERY="INSERT INTO company(companyid,companyname,street,city,district,state,country,mailid,contact,status) VALUES(?,?,?,?,?,?,?,?,?,?)";
	// Delete query for company
	public final static String Company_Delete_Query="delete from company where id=?";
	// Update query for Company
	public final static String Company_Update_Query="";
	

}
