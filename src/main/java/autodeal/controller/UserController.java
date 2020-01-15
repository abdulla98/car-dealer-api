package autodeal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import autodeal.input.UserInput;
import autodeal.pojo.User;
import autodeal.service.UserService;

import java.util.List;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/users")
    public List<User> getAllUsers() {
        return userService.findAll();
    }

    @GetMapping("/users/{email}")
    public User findUserByEmail(@PathVariable String email) {
        return userService.findByEmail(email);
    }

    @PostMapping(path="/user/save")
    public User saveUser(@RequestBody UserInput userInput) { return userService.save(userInput);}

    @DeleteMapping("/user/delete/{email}")
    public void deleteUser(@PathVariable String email) {
        userService.delete(email);
    }

}