package autodeal;

import autodeal.pojo.Car;
import org.junit.jupiter.api.Test;

import static junit.framework.TestCase.assertEquals;

public class CarClassTests {
    private final String make = "BMW";
    private final String model = "X1";
    private final String description ="Full oprema, pali vozi";
    private final String fuel = "Diesel";
    private final String image = "https://www.beforward.jp/bmw/x1/bg499711/id/1445485/";
    private final Integer price = 15000;
    private final String power = "150KW";
    private final Integer mileage = 157000;
    private final String date = "2020-01-01";
    private final String username = "abdullabakija";

    @Test
    public void testCarClass() {
        Car car = new Car(null, make, model, description, fuel, image, price, power, mileage, date, username);
        assertEquals(car.getMake(), make);
        assertEquals(car.getModel(),model);
        assertEquals(car.getDescription(), description);
        assertEquals(car.getFuel(),fuel);
        assertEquals(car.getImage(),image);
        assertEquals(car.getPrice(),price);
        assertEquals(car.getPower(),power);
        assertEquals(car.getMileage(),mileage);
        assertEquals(car.getDate(),date);
        assertEquals(car.getUsername(),username);
    }

}
