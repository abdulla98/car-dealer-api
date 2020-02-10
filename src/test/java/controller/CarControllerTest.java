package controller;
import autodeal.controller.CarController;
import autodeal.pojo.Car;
import autodeal.service.CarService;
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

//Car Controller Test
@RunWith(SpringRunner.class)
@WebMvcTest(CarController.class)
public class CarControllerTest {

    @Autowired
    private MockMvc mvc;

    @MockBean
    private CarService carService;

    @Test
    public void getCarTest() throws Exception {
        mvc.perform(get("/cars"))
                .andExpect(status().isOk());
    }

    @Test
    public void postUserTest() throws Exception{
        Car car = new Car("FakeMake", "FakeModel", "FakeDescription", "FakeFuel", "FakeImage", 12000, "FakePower", 22000, "FakeDate", "FakeUsername");

        mvc.perform(post("/car/save").contentType(MediaType.APPLICATION_JSON)
                .content(toJson(car))).andExpect(status().isOk());
    }
    private String toJson(final Object obj) {
        try {
            return new ObjectMapper().writeValueAsString(obj);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
