package service;

import autodeal.service.CarService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import static org.hibernate.validator.internal.util.Contracts.assertNotNull;

@SpringBootTest
public class CarServiceTest {
    @Autowired
    private CarService carService;


    @Test
    void getAllCompanies(){
        assertNotNull(carService.findAll());
    }
}

