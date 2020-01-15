package autodeal;

import autodeal.input.UserInput;
import org.junit.jupiter.api.Test;

import static junit.framework.TestCase.assertEquals;

public class UserInputTests {
    private final String username = "agniramadani";
    private final String name = "Agni Ramadani";
    private final String email = "agni@gmail.com";
    private final Integer phonenumber = 72522800;
    private final String address = "Cellopek";
    private final String password = "agni123";

    @Test
    public void testUserInput() {
        UserInput userInput = new UserInput(username, name, email, phonenumber, address, password);
        assertEquals(userInput.getUsername(), username);
        assertEquals(userInput.getName(), name);
        assertEquals(userInput.getEmail(), email);
        assertEquals(userInput.getPhonenumber(), phonenumber);
        assertEquals(userInput.getAddress(), address);
        assertEquals(userInput.getPassword(),password);
    }
}
