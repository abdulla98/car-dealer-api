package autodeal;


import autodeal.input.UserInput;
import autodeal.pojo.User;
import autodeal.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.hibernate.validator.internal.util.Contracts.assertNotNull;

@SpringBootTest
public class UserServiceTest {

    @Autowired
    private UserService userService;

    @Test
    void testGetAllUsers() {
        assertNotNull(userService.findAll());
    }

    @Test
    void testSaveUser() {
        assertNotNull(userService.save(new UserInput("Test username", "Test name", "Test email", 2222222, "Test address", "Test password")));
    }

}
