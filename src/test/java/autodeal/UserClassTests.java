package autodeal;

import autodeal.pojo.User;
import org.junit.jupiter.api.Test;

import static junit.framework.TestCase.assertEquals;

public class UserClassTests {
    private final String username = "abdullabakija";
    private final String name = "Abdulla Bakija";
    private final String email = "a.bakija09@gmail.com";
    private final Integer phonenumber = 78390649;
    private final String address = "Mala Recica";
    private final String password = "abdulla123";

    @Test
    public void testUserClass() {
        User user = new User(username, name, email, phonenumber, address, password);
        assertEquals(user.getUsername(), username);
        assertEquals(user.getName(), name);
        assertEquals(user.getEmail(), email);
        assertEquals(user.getPhonenumber(), phonenumber);
        assertEquals(user.getAddress(), address);
        assertEquals(user.getPassword(),password);
    }
}
