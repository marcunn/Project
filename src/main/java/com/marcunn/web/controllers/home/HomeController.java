package com.marcunn.web.controllers.home;

import com.marcunn.web.Dtos.UserForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import java.util.Iterator;

/**
 * Created by Marcin Surowiec (lookatmycode@outlook.com)
 * Project: MyBlogWebapp
 * Date: 2014-10-19
 */
@Controller
public class HomeController {
@RequestMapping( value = "/")
String getHomePage(Model model)
    {
          model.addAttribute("userForm", new UserForm());
        return "home/homePage";
    }
 @RequestMapping( value = "/ajaxAdd", method = RequestMethod.POST)
 public @ResponseBody
 String ajaxAdd(@ModelAttribute("userForm") UserForm userForm, BindingResult result)
 {
     System.out.println("Działa " + userForm.getNickname() + " + " + userForm.getPassword());
     return "Twoje nick: " + userForm.getNickname() + " pass: " + userForm.getPassword();
 }



}
