package com.airline.controllers;

import java.sql.*;
import java.util.*;


public class ConnectionManager {

   static Connection con=null;
   static String dbURL="jdbc:derby://localhost:1527/airline;create=true;user=Airline;password=Airline";
   private static String tableName = "UREGISTRATION";    
   public static Connection getConnection()
   {
     
      try
      {
        
         // assuming "DataSource" is your DataSource name

         Class.forName("org.apache.derby.jdbc.ClientDriver");
         
         try
         {            	
        	 con = DriverManager.getConnection(dbURL); 
             								
         // assuming your SQL Server's	username is "username"               
         // and password is "password"
              
         }
         
         catch (SQLException ex)
         {
            ex.printStackTrace();
         }
      }

      catch(ClassNotFoundException e)
      {
         System.out.println(e);
      }

   return con;
}
}