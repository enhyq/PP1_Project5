package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
public class HomeController {

    // Home is not working...
//    @RequestMapping(method = RequestMethod.GET)
    @RequestMapping("/home")
    public String home(Model model) {
        System.out.println("HomeController - showing index page");
        model.addAttribute("serverTime", new Date().toString());
        return "home";
    }

}
