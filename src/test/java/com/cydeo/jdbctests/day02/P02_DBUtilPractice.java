package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P02_DBUtilPractice {
    @Test
    public void task1() {
        DB_Util.createConnection();
        DB_Util.runQuery("select first_name,last_name,salary from employees");
        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();

        for (Map<String, String> eachRow : allRowAsListOfMap) {
            System.out.println(eachRow);
        }
        System.out.println(DB_Util.getFirstRowFirstColumn());
        DB_Util.destroy();

    }

    @Test
    public void task2() {

        // Create con
        DB_Util.createConnection();
        // run Query
        // select count(*) from employees
        DB_Util.runQuery("select count(*) from employees");

        // how many employee we have
        System.out.println(DB_Util.getFirstRowFirstColumn());  // 107

        System.out.println(DB_Util.getCellValue(1, 1));  //107


        // Close Conn -- Destroy
        DB_Util.destroy();

    }
}
