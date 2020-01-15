package autodeal.input;

import java.util.Date;
import java.util.UUID;

public class CarInput {
    private UUID id;
    private String make;
    private String model;
    private String description;
    private String fuel;
    private String image;
    private Integer price;
    private String power;
    private Integer mileage;
    private String date;
    private String username;

    public CarInput() {
    }

    public CarInput(UUID id, String make, String model, String description,
                    String fuel, String image, Integer price, String power,
                    Integer mileage, String date, String username) {
        this.id = id;
        this.make = make;
        this.model = model;
        this.description = description;
        this.fuel = fuel;
        this.image = image;
        this.price = price;
        this.power = power;
        this.mileage = mileage;
        this.date = date;
        this.username = username;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public Integer getMileage() {
        return mileage;
    }

    public void setMileage(Integer mileage) {
        this.mileage = mileage;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}

