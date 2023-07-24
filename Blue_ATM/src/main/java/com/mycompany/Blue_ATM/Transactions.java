/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.Blue_ATM;

import java.sql.Connection;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException; 
import java.text.SimpleDateFormat;  
import java.text.DateFormat;
import java.util.Calendar;

/**
 *
 * @author Óscar Poblete Sáenz & Julieta Rojas García
 */
public class Transactions{
    
    private static double balance;
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    
    public Transactions(){
    
    }
    
    public void withdrawal(double wamount){
        Users usr=new Users();
        String Query="UPDATE cards SET card_balance=card_balance-"+wamount+" WHERE card_id='"+usr.getCardID()+"'";
        try{
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_atm?serverTimezone=UTC","root","root");
           Statement add = con.createStatement();
           add.executeUpdate(Query);
        }catch(SQLException e){
          //e.printStackTracer();  
        }
    }
        
    public void deposit(double damount){
        Users usr=new Users();
        String Query="UPDATE cards SET card_balance=card_balance+"+damount+" WHERE card_id='"+usr.getCardID()+"'";
        try{
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_atm?serverTimezone=UTC","root","root");
           Statement add = con.createStatement();
           add.executeUpdate(Query);
        }catch(SQLException e){
          //e.printStackTracer();  
        }
    }    
    
    public void fastcash(double famount){
        Users usr=new Users();
        String Query="UPDATE cards SET card_balance=card_balance-"+famount+" WHERE card_id='"+usr.getCardID()+"'";
        try{
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_atm?serverTimezone=UTC","root","root");
           Statement add = con.createStatement();
           add.executeUpdate(Query);
        }catch(SQLException e){
          //e.printStackTracer();  
        }
    }
    
    public void changePIN(String nPIN){
        Users usr=new Users();
        String Query="UPDATE accounts SET account_pin='"+nPIN+"' WHERE account_id='"+usr.getAccountID()+"'";
        System.out.println(Query);
        try{
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_atm?serverTimezone=UTC","root","root");
           Statement add = con.createStatement();
           add.executeUpdate(Query);
        }catch(SQLException e){
          //e.printStackTracer();  
        }
    }
    
    public void registerTransaction(String type, double tamount){
        Users usr=new Users();
        String pattern = "yyyy/MM/dd HH:mm:ss";
        // Create an instance of SimpleDateFormat used for formatting 
        // the string representation of date according to the chosen pattern
        DateFormat df = new SimpleDateFormat(pattern);
        // Get the today date using Calendar object.
        Date today = Calendar.getInstance().getTime();        
        // Using DateFormat format method we can create a string 
        // representation of a date with the defined format.
        String strDate = df.format(today);
        
        String Query="INSERT INTO transactions values('"+usr.getCardID()+"',DEFAULT,'"+type+"','"+strDate+"',"+tamount+")";
        try{
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_atm?serverTimezone=UTC","root","root");
           Statement add = con.createStatement();
           add.executeUpdate(Query);
        }catch(SQLException e){
          //e.printStackTracer();  
        }
    }
    
    public double balance(){
        Users usr=new Users();
        String Query="SELECT card_balance from cards WHERE card_id='"+usr.getCardID()+"'";
        double balance=0;
        try{
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_atm?serverTimezone=UTC","root","root");
           st = con.createStatement();
           rs = st.executeQuery(Query); 

           if(rs.next()){
               
           balance=rs.getDouble("card_balance");
           
           }else{
               System.out.println("ERROR");
           }
        }catch(SQLException e){
          //e.printStackTracer();  
        }
        System.out.print("\n"+balance);
        return balance;
    }
    
}
