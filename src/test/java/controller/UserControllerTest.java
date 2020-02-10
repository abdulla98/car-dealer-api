package controller;

import autodeal.controller.UserController;
import autodeal.pojo.User;
import autodeal.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import org.springframework.http.MediaType;
import com.fasterxml.jackson.databind.ObjectMapper;

//User Controller Test
@RunWith(SpringRunner.class)
@WebMvcTest(UserController.class)
public class UserControllerTest {
    @Autowired
    private MockMvc mvc;

    @MockBean
    private UserService userService;

    @Test
    public void getUserTest() throws Exception {
        mvc.perform(get("/users"))
                .andExpect(status().isOk());
    }
    @Test
    public void postUserTest() throws Exception{
        User user = new User("FakeUsername", "FakeName", "FakeEmail", 025456325, "FakeAddress", "FakePassword");

        mvc.perform(post("/user/save").contentType(MediaType.APPLICATION_JSON)
                .content(toJson(user))).andExpect(status().isOk());
    }
    private String toJson(final Object obj) {
        try {
            return new ObjectMapper().writeValueAsString(obj);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
