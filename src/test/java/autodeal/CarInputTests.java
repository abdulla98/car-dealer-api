package autodeal;

import autodeal.input.CarInput;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;
import org.junit.jupiter.api.Test;

import javax.persistence.GeneratedValue;
import java.util.UUID;

import static junit.framework.TestCase.assertEquals;

public class CarInputTests {
    @Type(type = "pg-uuid")
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    private UUID id;
    private final String make = "BMW";
    private final String model = "X1";
    private final String description ="Used carefully, xDrive x23d";
    private final String fuel = "Gasoline";
    private final String image = "https://www.beforward.jp/bmw/x1/bg499711/id/1445485/";
    private final Integer price = 12000;
    private final String power = "120KW";
    private final Integer mileage = 222000;
    private final String date = "2020-01-01";
    private final String username = "abdullabakija";

    @Test
    public void testCarInputClass() {
        CarInput carInput = new CarInput(id,make, model, description,fuel, image, price, power, mileage, date, username);
        assertEquals(carInput.getId(), id);
        assertEquals(carInput.getMake(), make);
        assertEquals(carInput.getModel(),model);
        assertEquals(carInput.getDescription(), description);
        assertEquals(carInput.getFuel(),fuel);
        assertEquals(carInput.getImage(),image);
        assertEquals(carInput.getPrice(),price);
        assertEquals(carInput.getPower(),power);
        assertEquals(carInput.getMileage(),mileage);
        assertEquals(carInput.getDate(),date);
        assertEquals(carInput.getUsername(),username);
    }

}
