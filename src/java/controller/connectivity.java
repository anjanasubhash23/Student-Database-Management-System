/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 *  
 */
public class connectivity {
    public static Connection connector()
	{
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3307/student?zeroDateTimeBehavior=convertToNull","root","");
		} catch (ClassNotFoundException | SQLException e) {	
			e.printStackTrace();
		}
		return con;
	}
	public static void main(String[] args) {
		Connection con=connector();
		if(con==null)
			System.out.println("Fail");
		else
			System.out.println("pass");
	}
}
