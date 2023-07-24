package com.teamcode.datn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/home")
@Controller
public class HomeController {

    @GetMapping("")
    public String home (Model model){
        model.addAttribute("helo","WEBSITE BAN BALO THOI TRANG");
        return "layout/giaodien";
    }
}
