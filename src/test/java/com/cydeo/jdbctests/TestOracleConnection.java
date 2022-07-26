package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {
    public static void main(String[] args) throws SQLException {
        String dbUrl = "jdbc:oracle:thin:@44.202.59.69:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";
//DriverManager class get connection is used for to make connection with database
        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
//Statement help us to execute query
        Statement statement = connection.createStatement();
        //ResultSet stores data we get from after query execution

        ResultSet resultSet = statement.executeQuery("select * from regions");
//        resultSet.next();
//        System.out.println(resultSet.getInt(1));
//        System.out.println(resultSet.getInt("REGION_ID"));
//        System.out.println(resultSet.getString("REGION_NAME"));
//        resultSet.next();
//        System.out.println(resultSet.getInt("REGION_ID")+" - "+resultSet.getString("REGION_NAME"));
//        resultSet.next();
//        System.out.println(resultSet.getInt("REGION_ID")+" - "+resultSet.getString("REGION_NAME"));


        while (resultSet.next()){
            System.out.println(resultSet.getInt("REGION_ID")+" - "+resultSet.getString("REGION_NAME"));
        }

    }
}
