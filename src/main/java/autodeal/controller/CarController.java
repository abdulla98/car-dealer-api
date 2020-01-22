package autodeal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import autodeal.input.CarInput;
import autodeal.pojo.Car;
import autodeal.service.CarService;

import java.util.List;
import java.util.UUID;

@RestController
public class CarController {

    @Autowired
    private CarService carService;

    @RequestMapping("")
    public String helloCarDealing() {
        return "Welcome to your car dealer";
    }

    @GetMapping("/car/{id}")
    public Car getOneCar(@PathVariable UUID id) {
        return carService.findOneById(id);
    }

    @GetMapping("/cars")
    public List<Car> getAllCars() {
        return carService.findAll();
    }

    @GetMapping("/cars/{make}")
    public List<Car> getCarsByMake(@PathVariable String make) {
        return carService.findAllByMake(make);
    }

    @GetMapping("/cars/{make}/{model}")
    public List<Car> getCarsByMakeAndModel(@PathVariable String make, @PathVariable String model) {
        return carService.findAllByMakeAndModel(make, model);
    }

    @GetMapping("/getCarsByMakeAndFuel/{make}/{fuel}")
    public List<Car> getCarsByMakeAndFuel(@PathVariable String make, @PathVariable String fuel) {
        return carService.findAllByMakeAndFuel(make, fuel);
    }

    @GetMapping("/carsbyfuel/{fuel}")
    public List<Car> getCarsByFuel(@PathVariable String fuel) {
        return carService.findAllByFuel(fuel);
    }


    @PostMapping(path = "/car/save")
    public Car saveCar(@RequestBody CarInput carInput) {
        return carService.save(carInput);
    }

    @DeleteMapping("/car/delete/{id}")
    public void deleteCar(@PathVariable UUID id) {
        carService.deleteCar(id);
    }

    @PutMapping("/car/update/{id}")
    public void updateCar(@PathVariable UUID id, @RequestBody CarInput carInput) {
        carService.update(id, carInput);
    }


}

