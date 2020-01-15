package autodeal.service;

import autodeal.input.UserInput;
import autodeal.pojo.User;

import java.util.List;
import java.util.UUID;

public interface UserService {
    List<User> findAll();
    User findByEmail(String email);
    User save (UserInput userInput);
    void delete(String email);
}