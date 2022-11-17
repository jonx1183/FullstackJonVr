package com.example.fullstack_project.Repository;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnectManager {

  private static String hostname;
  private static String username;
  private static String password;
  private static Connection conn;


//Metoder

  public static Connection getConnection(){
    hostname = "jdbc:mysql://jonstestserver.mysql.database.azure.com";
    username = "jonx1183";
    password = "Wolf1712";

    try{

      conn = DriverManager.getConnection(hostname, username, password);
    }catch (SQLException e){
      System.out.println("Connection Error");
      e.printStackTrace();
    }
    System.out.println("Connected to Database");

    return conn;

  }
}
