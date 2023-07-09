package com.teamcode.datn.dbContact;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;

public class jackson {

    public static void main(String[] args) throws Exception {
        demo2();
    }

    private static void demo2() throws Exception{
        String path ="D:\\FPT Polytechnic\\Ky7_datn\\DATN\\src\\main\\resources\\static\\staffs.json";


        ObjectMapper mapper = new ObjectMapper();
        JsonNode staffs = mapper.readTree(new File(path));
        staffs.iterator().forEachRemaining(staff -> {
            System.out.println("Name:" + staff.get("User").get("fullName").asText());

        });

    }

//    private static void demo1() throws Exception {
//        //doc file json theo duong dan
//        String path ="D:\\FPT Polytechnic\\Ky7_datn\\DATN\\src\\main\\resources\\static\\staffOne.json";
//
//
//        ObjectMapper mapper = new ObjectMapper();
//        JsonNode staff = mapper.readTree(new File(path));
//
//        System.out.println("Name:" + staff.get("User").get("fullName").asText());
//        System.out.println("Account:" + staff.get("User").get("account").asText());
//        System.out.println("Pass:" + staff.get("User").get("password").asText());
//        System.out.println("Phone:" + staff.get("User").get("phone").asText());
//        System.out.println("Gender:" + staff.get("User").get("gender").asBoolean());
//        System.out.println("Role:" + staff.get("role").asText());
//        System.out.println("Gender:" + staff.get("User").get("gender").asBoolean());
//        System.out.println("Status:" + staff.get("status").asText());
//
//
//
//    }

}
