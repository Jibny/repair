package top.shmly.system.repair.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("hello")
public class HelloController {

    @RequestMapping("")
    public String index(Model model) {
        model.addAttribute("hello", "Welcome Repair API Interface!");
        return "hello/hello";
    }


}
