package login.web;

import login.model.User;
import login.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {

    @Autowired
    private UserRepository userRepo;

    

    @GetMapping(value = "/init.html")
    public String initUsers() {
        User rayane = new User();
        rayane.setUsername("rayanelebg");
        rayane.setPassword("lebg");
        rayane.setFirstname("Rayane");
        rayane.setLastname("Hamani");
        userRepo.save(rayane);

        User florian = new User();
        florian.setUsername("florianlebeau");
        florian.setPassword("lebeau");
        florian.setFirstname("Florian ");
        florian.setLastname("Dendoncker");
        userRepo.save(florian);

        return "init";
    }

    @GetMapping(value = "/login.html")
    public String getLogin() {
        return "login";
    }

    @PostMapping(value = "/login.html")
    public String postLogin(Model model, @ModelAttribute("username") String username, @ModelAttribute("password") String password) {
        User user = userRepo.findByUsername(username.toLowerCase());

        if (user == null || !user.getPassword().equals(password))
            return "fail";
        else
            return "success";
    }

}
