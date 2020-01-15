package autodeal.service;

import autodeal.repository.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import autodeal.input.CarInput;
import autodeal.pojo.Car;

import java.util.List;
import java.util.UUID;

public class DefaultCarService implements CarService {

    @Autowired
    private CarRepository carRepository;

    @Override
    public List<Car> findAll() {
        return carRepository.findAll();
    }


    @Override
    public Car findOneById(UUID id) {
        return carRepository.findOneById(id);
    }

    @Override
    public List<Car> findAllByMake(String make) {
        return carRepository.findAllByMake(make);
    }

    @Override
    public List<Car> findAllByPrice(Integer price) {
        return carRepository.findAllByPrice(price);
    }

    @Override
    public List<Car> findAllByMileage(Integer mileage) {
        return carRepository.findAllByMileage(mileage);
    }

    @Override
    public List<Car> findAllByPriceAndMileage(Integer price, Integer mileage) {
        return carRepository.findAllByPriceAndMileage(price, mileage);
    }

    @Override
    public List<Car> findAllByFuel(String fuel) {
        return carRepository.findAllByFuel(fuel);
    }

    @Override
    public List<Car> findAllByPriceAndFuel(Integer price, String fuel) {
        return carRepository.findAllByPriceAndFuel(price, fuel);
    }

    @Override
    public List<Car> findAllByMakeAndModel(String make, String model) {
        return carRepository.findAllByMakeAndModel(make, model);
    }

    @Override
    public List<Car> findAllByMakeAndFuel(String make, String fuel) {
        return carRepository.findAllByMakeAndFuel(make, fuel);
    }

    @Override
    public List<Car> findAllByMakeAndPrice(String make, Integer price) {
        return carRepository.findAllByMakeAndPrice(make, price);
    }

    @Override
    public List<Car> findAllByMakeAndMileage(String make, Integer mileage) {
        return carRepository.findAllByMakeAndMileage(make, mileage);
    }

    @Override
    public List<Car> findAllByMakeAndPower(String make, String power) {
        return carRepository.findAllByMakeAndPower(make, power);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndFuel(String make, String model, String fuel) {
        return carRepository.findAllByMakeAndModelAndFuel(make, model, fuel);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndPrice(String make, String model, Integer price) {
        return carRepository.findAllByMakeAndModelAndPrice(make, model, price);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndMileage(String make, String model, Integer mileage) {
        return carRepository.findAllByMakeAndModelAndMileage(make, model, mileage);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndPower(String make, String model, String power) {
        return carRepository.findAllByMakeAndModelAndPower(make, model, power);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndFuelAndPower(String make, String model, String fuel, String power) {
        return carRepository.findAllByMakeAndModelAndFuelAndPower(make, model, fuel, power);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndFuelAndPrice(String make, String model, String fuel, Integer price) {
        return carRepository.findAllByMakeAndModelAndFuelAndPrice(make, model, fuel, price);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndFuelAndMileage(String make, String model, String fuel, Integer mileage) {
        return carRepository.findAllByMakeAndModelAndFuelAndMileage(make, model, fuel, mileage);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndPriceAndPower(String make, String model, Integer price, String power) {
        return carRepository.findAllByMakeAndModelAndPriceAndPower(make, model, price, power);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndMileageAndPower(String make, String model, Integer mileage, String power) {
        return carRepository.findAllByMakeAndModelAndMileageAndPower(make, model, mileage, power);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndFuelAndPowerAndPrice(String make, String model, String fuel, String power, Integer price) {
        return carRepository.findAllByMakeAndModelAndFuelAndPowerAndPrice(make, model, fuel, power, price);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndFuelAndPowerAndMileage(String make, String model, String fuel, String power, Integer mileage) {
        return carRepository.findAllByMakeAndModelAndFuelAndPowerAndMileage(make, model, fuel, power, mileage);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndPriceAndPowerAndMileage(String make, String model, Integer price, String power, Integer mileage) {
        return carRepository.findAllByMakeAndModelAndPriceAndPowerAndMileage(make, model, price, power, mileage);
    }

    @Override
    public List<Car> findAllByMakeAndModelAndFuelAndPriceAndMileage(String make, String model, String fuel, Integer price, Integer mileage) {
        return carRepository.findAllByMakeAndModelAndFuelAndPriceAndMileage(make, model, fuel, price, mileage);
    }

    @Override
    public Car save(CarInput carInput) {
        Car newCar = new Car();
        newCar.setId(carInput.getId());
        newCar.setMake(carInput.getMake());
        newCar.setModel(carInput.getModel());
        newCar.setDescription(carInput.getDescription());
        newCar.setFuel(carInput.getFuel());
        newCar.setImage(carInput.getImage());
        newCar.setPrice(carInput.getPrice());
        newCar.setPower(carInput.getPower());
        newCar.setMileage(carInput.getMileage());
        newCar.setDate(carInput.getDate());
        newCar.setUsername(carInput.getUsername());

        return carRepository.save(newCar);
    }

    @Override
    public void update(UUID id) {

    }

    @Override
    public void deleteCar(UUID id) {

    }
}
