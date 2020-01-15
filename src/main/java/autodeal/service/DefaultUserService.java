package autodeal.service;

import autodeal.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import autodeal.input.UserInput;
import autodeal.pojo.User;

import java.util.List;
import java.util.UUID;

public class DefaultUserService implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User save(UserInput userInput) {
        User newUser = new User();

        newUser.setUsername(userInput.getUsername());
        newUser.setName(userInput.getName());
        newUser.setEmail(userInput.getEmail());
        newUser.setPhonenumber(userInput.getPhonenumber());
        newUser.setAddress(userInput.getAddress());
        newUser.setPassword(userInput.getPassword());

        return userRepository.save(newUser);
    }

    @Override
    public User findByEmail(String email) {
        if (userRepository.findByEmail(email) != null) {
            return userRepository.findByEmail(email);
        }
        return null;
    }

    @Override
    public void delete(String email) {
        User user = userRepository.findByEmail(email);
        if( user != null) {
            userRepository.delete(user);
        }
    }
}