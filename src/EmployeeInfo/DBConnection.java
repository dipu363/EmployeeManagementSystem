/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EmployeeInfo;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author HP
 */


public class DBConnection {
    public static Connection getDBConnection(){
    Connection con= null;
        try {
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_information","root", "123");

        } catch (Exception e) {
        }
    return con;
    
    }
}
