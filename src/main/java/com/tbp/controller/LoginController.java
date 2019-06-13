package com.tbp.controller;

import com.tbp.repository.PersonRepository;
import com.tbp.interceptor.UserSession;
import com.tbp.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    PersonRepository personRepository;
    @Autowired
    UserSession userSession;

    @RequestMapping(value = "doLogin", method = RequestMethod.GET)
    public String loginPage() {
        return "login";
    }

    @RequestMapping(value = "doLogin", method = RequestMethod.POST)
    public String login(@RequestParam("email") String email,
                        @RequestParam("password") String password,
                        Map<String, Object> model) {
        Person u = personRepository.findByEmail(email) ;
        if(u != null && u.getPassword().equals(password)) {
            userSession.addLoggedUser(u);

            if (u.getEmail().equals("admin@admin")) {

                return "redirect:/book/list";
            }

            return "redirect:/store/storelist";


        } else {
            model.put("message", "Login Invalido");
            return "login";
        }
    }

    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout() {
        userSession.removeLoggedUser();
        return "login";
    }


}
