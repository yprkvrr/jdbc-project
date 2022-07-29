package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetadataTest {
    String dbUrl = "jdbc:oracle:thin:@44.202.59.69:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statemet helps us to execute Query
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // ResutSet stores data that we get from after query execution
        // rs is just a variable/object name
        ResultSet rs = statement.executeQuery("select * from employees");
        DatabaseMetaData databaseMetaData = conn.getMetaData();
        System.out.println(databaseMetaData.getUserName());
        System.out.println(databaseMetaData.getDatabaseProductName());
        System.out.println(databaseMetaData.getDatabaseProductVersion());
        System.out.println(databaseMetaData.getDriverName());
        System.out.println(databaseMetaData.getDriverVersion());

//Result set Metadata

        ResultSetMetaData rsmd = rs.getMetaData();
        //How many columns we have
        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);
        System.out.println(rsmd.getColumnName(5));
        System.out.println();
//        for (int i = 1; i <= columnCount; i++) {
//            System.out.println(rsmd.getColumnName(i));
//
//
//        }
        while (rs.next()) {
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                System.out.print(rsmd.getColumnName(i)+" "+rs.getString(i)+" ");

            }
        }

        //close conn
        rs.close();
        statement.close();
        conn.close();
    }
}
