/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.doc.connection;
import java.sql.*;
public class MyConnection
{
    static
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Load successfull.....");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public static Connection getConnection()
    {
        Connection con=null;
        try
        {
            String url="jdbc:mysql://localhost:3306/DoctorNearYou";
            String user="root";
            String pass="root";
            con=DriverManager.getConnection(url,user,pass);
            System.out.println("Connection done........");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
    
}
