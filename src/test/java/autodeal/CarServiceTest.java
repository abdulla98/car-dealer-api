package autodeal;


import autodeal.service.CarService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.hibernate.validator.internal.util.Contracts.assertNotNull;

@SpringBootTest
class CarServiceTest {

    @Autowired
    private CarService carService;

    @Test
    void testGetAllCars() {
        assertNotNull(carService.findAll());
    }

    @Test
    void testFindCarByMake() {
        String make = "Fiat";
        assertNotNull(carService.findAllByMake(make));
    }

    @Test
    void testFindCarByMakeAndModel() {
        String make = "BMW";
        String model = "X1";
        assertNotNull(carService.findAllByMakeAndModel(make, model));
    }



}