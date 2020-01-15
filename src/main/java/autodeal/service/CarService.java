package autodeal.service;

import autodeal.input.CarInput;
import autodeal.pojo.Car;

import java.util.List;
import java.util.UUID;

public interface CarService {

    List<Car> findAll();

    Car findOneById(UUID id);

    List<Car> findAllByMake(String make);

    List<Car> findAllByPrice(Integer price);

    List<Car> findAllByMileage(Integer mileage);

    List<Car> findAllByPriceAndMileage(Integer price, Integer mileage);

    List<Car> findAllByFuel(String fuel);

    List<Car> findAllByPriceAndFuel(Integer price, String fuel);

    List<Car> findAllByMakeAndModel(String make, String model);

    List<Car> findAllByMakeAndFuel(String make, String fuel);

    List<Car> findAllByMakeAndPrice(String make, Integer price);

    List<Car> findAllByMakeAndMileage(String make, Integer mileage);

    List<Car> findAllByMakeAndPower(String make, String power);

    List<Car> findAllByMakeAndModelAndFuel(String make, String model, String fuel);

    List<Car> findAllByMakeAndModelAndPrice(String make, String model, Integer price);

    List<Car> findAllByMakeAndModelAndMileage(String make, String model, Integer mileage);

    List<Car> findAllByMakeAndModelAndPower(String make, String model, String power);

    List<Car> findAllByMakeAndModelAndFuelAndPower(String make, String model, String fuel, String power);

    List<Car> findAllByMakeAndModelAndFuelAndPrice(String make, String model, String fuel, Integer price);

    List<Car> findAllByMakeAndModelAndFuelAndMileage(String make, String model, String fuel, Integer mileage);

    List<Car> findAllByMakeAndModelAndPriceAndPower(String make, String model, Integer price, String power);

    List<Car> findAllByMakeAndModelAndMileageAndPower(String make, String model, Integer mileage, String power);

    List<Car> findAllByMakeAndModelAndFuelAndPowerAndPrice(String make, String model, String fuel, String power, Integer price);

    List<Car> findAllByMakeAndModelAndFuelAndPowerAndMileage(String make, String model, String fuel, String power, Integer Mileage);

    List<Car> findAllByMakeAndModelAndPriceAndPowerAndMileage(String make, String model, Integer price, String power, Integer Mileage);

    List<Car> findAllByMakeAndModelAndFuelAndPriceAndMileage(String make, String model, String fuel, Integer price, Integer mileage);

    Car save(CarInput carInput);

    void update(UUID id);

    void deleteCar(UUID id);
}

