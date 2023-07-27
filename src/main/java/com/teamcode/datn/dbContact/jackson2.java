package com.teamcode.datn.dbContact;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.teamcode.datn.entity.Staff;
import org.apache.tomcat.util.json.JSONParser;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class jackson2 {

    public static void main(String[] args) throws Exception {

        demo6();

    }

    //them du lieu moi vao file json
    private static void demo6() throws Exception {
        try {
            // Đường dẫn đến tệp tin JSON ban đầu
            String filePath = "D:\\FPT Polytechnic\\Ky7_datn\\DATN\\src\\main\\resources\\static\\json\\staffs.json";

            // Đọc nội dung từ tệp tin JSON ban đầu
            JSONParser jsonParser = new JSONParser();
            JSONArray jsonArray = (JSONArray) jsonParser.parse(new FileReader(filePath));
            // Xử lý mảng JSON ở đây
            // Tạo đối tượng mới và thêm vào đối tượng ban đầu
            Map<String, Object> user = new HashMap<String, Object>();
            user.put("email", "a@gmail.com");
            user.put("account", "nv7");
            user.put("name", "Nguyen van B");
            user.put("password", "12123");
            user.put("phone", "31231231123");
            user.put("gender", true);

            Map<String, Object> staff = new HashMap<String, Object>();
            staff.put("role", "nv7");
            staff.put("status", "hoat dong");
            staff.put("user", user);

            //Add du lieu moi vao json
            jsonArray.add(staff);
            // Ghi đối tượng ban đầu với dữ liệu mới vào tệp tin JSON
            FileWriter fileWriter = new FileWriter("D:\\FPT Polytechnic\\Ky7_datn\\DATN\\src\\main\\resources\\static\\json\\staffs.json");
            fileWriter.write(jsonArray.toJSONString());
            fileWriter.flush();
            fileWriter.close();

            System.out.println("Dữ liệu đã được thêm vào tệp tin JSON thành công!");
        } catch (IOException | ParseException e) {
            e.printStackTrace();
            System.out.println("That bai");

        }
    }

    //tao doi tuong bang Map thanh file json
    private static void demo5() throws Exception {
        Map<String, Object> user = new HashMap<String, Object>();
        user.put("email", "a@gmail.com");
        user.put("account", "nv5");
        user.put("name", "Nguyen van A");
        user.put("password", "12123");
        user.put("phone", "03439342424");
        user.put("gender", true);

        Map<String, Object> staff = new HashMap<String, Object>();
        staff.put("role", "nv5");
        staff.put("status", "hoat dong");
        staff.put("user", user);

        ObjectMapper mapper = new ObjectMapper();

        //doi sang string
        String json = mapper.writeValueAsString(staff);
        //doi sang file .json
        mapper.writeValue(new File("D:\\FPT Polytechnic\\Ky7_datn\\DATN\\src\\main\\resources\\static\\newStaff.json"), staff);
    }


    //Doc file json class theo list
    private static void demo4() throws Exception {
        String path = "D:\\FPT Polytechnic\\Ky7_datn\\DATN\\src\\main\\resources\\static\\staffs.json";
        TypeReference<List<Staff>> type = new TypeReference<List<Staff>>() {
        };
        ObjectMapper mapper = new ObjectMapper();
        List<Staff> staffs = mapper.readValue(new File(path), type);
        staffs.forEach(staff -> {
            System.out.println("Name: " + staff.getUser().getName());
            System.out.println("Name: " + staff.getRole());
        });

    }

    //Doc file json class theo doi tuong
    private static void demo3() throws Exception {
        String path = "D:\\FPT Polytechnic\\Ky7_datn\\DATN\\src\\main\\resources\\static\\staff.json";

        ObjectMapper mapper = new ObjectMapper();
        Staff staff = mapper.readValue(new File(path), Staff.class);
        System.out.println("Name: " + staff.getUser().getName());
        System.out.println("Account: " + staff.getUser().getAccount());
        System.out.println("Pass: " + staff.getUser().getPassword());
        System.out.println("GioiTinh: " + staff.getUser().getGender());
        System.out.println("Email: " + staff.getUser().getEmail());
        System.out.println("Role: " + staff.getRole());
        System.out.println("Status:" + staff.getStatus());


    }

    private static void demo2() throws Exception {
        String path = "D:\\FPT Polytechnic\\Ky7_datn\\DATN\\src\\main\\resources\\static\\staffs.json";

        ObjectMapper mapper = new ObjectMapper();
        List<Map<String, Object>> staffs = mapper.readValue(new File(path), List.class);

        staffs.forEach(staff -> {
            Map<String, Object> user = (Map<String, Object>) staff.get("User");
            System.out.println("Name: " + user.get("fullName") + " " + staff.get("role"));
//            System.out.println("Role: " + staff.get("role"));

        });

    }

    private static void demo1() throws Exception {
        String path = "D:\\FPT Polytechnic\\Ky7_datn\\DATN\\src\\main\\resources\\static\\staff.json";

        ObjectMapper mapper = new ObjectMapper();
        Map<String, Object> staff = mapper.readValue(new File(path), Map.class);


        Map<String, Object> user = (Map<String, Object>) staff.get("User");
        System.out.println("Name:" + user.get("fullName"));
        System.out.println("Phone:" + user.get("phone"));
        System.out.println("TaiKhoan:" + user.get("account"));
        System.out.println("MatKhau:" + user.get("password"));
        System.out.println("GioiTinh:" + user.get("gender"));
        System.out.println("Email:" + user.get("email"));

        System.out.println("Role: " + staff.get("role"));
        System.out.println("Status: " + staff.get("status"));
    }
}
