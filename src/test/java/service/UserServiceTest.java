package service;

import autodeal.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.hibernate.validator.internal.util.Contracts.assertNotNull;

@SpringBootTest
public class UserServiceTest {

    @Autowired
    private UserService userService;


    @Test
    void getAllUsers(){
        assertNotNull(userService.findAll());
    }

}
