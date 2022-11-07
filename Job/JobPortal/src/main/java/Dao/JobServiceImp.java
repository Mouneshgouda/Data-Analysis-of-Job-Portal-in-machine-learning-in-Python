package Dao;

import java.sql.*;

import JDBCConnection.JDBCConnect;

import Model.Search;

public class JobServiceImp {

	
	  public int jobsearch(String search) { 
		 int status = 0;
		 int c=1; 
		 Connection con = JDBCConnect.getConnection();
		 PreparedStatement ps = null; 
		 Statement stat = null;
		 ResultSet res = null; 
		 try { 
			 stat = con.createStatement(); 
			 String sql ="select searchname from SEARCHTABLE";
	 
	  res = stat.executeQuery(sql); 
	  System.out.println("value" + res); 
	  while(res.next()) {
	  
	  String check_name = res.getString("SEARCHNAME");
	 
	 
	  if ((search.equals(check_name))) {
		  System.out.println("compare"+check_name);
	  
	 
			/*
			 * ps=con.prepareStatement("update SEARCHTABLE set count=? where searchname=?"
			 * ); ps.setInt(1, c); ps.setString(2, search);
			 */
	  
	  JobServiceImp jobServiceImp = new JobServiceImp();
	  status = jobServiceImp.job(search);
	  
	  
	  
	  
	  } else {
		  ps = con.prepareStatement("insert into SEARCHTABLE(searchname,count) values (?,?)");
	  
	  ps.setString(1, search);
	  ps.setInt(2, c); 
	  } 
	  }
	  status = ps.executeUpdate();
	 
	  } catch (Exception e) { 
		  System.out.println(e); 
		  } 
		 return status; 
		 }
	 
	  private int job(String search) {
	 int status = 0;
	 String s=search;
	 System.out.println("string"+s);
	
	Connection con1 = JDBCConnect.getConnection();
	PreparedStatement ps1 = null;
	Statement stat1 = null;
	ResultSet res1 = null;
	try{
		stat1 = con1.createStatement();
		System.out.print("\n"+s+"\n");
		String sql = " select COUNT from SEARCHTABLE where SEARCHNAME ='"+s+"' ";

		res1 = stat1.executeQuery(sql);
		System.out.println("\nvalue" + res1);
		while (res1.next()) {

			int c1 = res1.getInt("COUNT");
			c1++;
			System.out.println("count" + c1);
			
			 ps1 =
			 con1.prepareStatement("update SEARCHTABLE set COUNT=? where SEARCHNAME=?");
			 ps1.setInt(1, c1); ps1.setString(2, search);
			 

		}
		 status = ps1.executeUpdate(); 

	

	}catch(Exception e)
	{
		System.out.println(e);
	}return status;

}

}
