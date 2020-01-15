# car-dealer-api

This project contains the api for AutoDeal



## Table of Contents

1. [Tools](#tools)

1. [Dependencies](#dependencies)

1. [Getting Started](#getting-started)

1. [Database](#database)

1. [REST Endpoints](#rest-endpoints)

## Tools

For running it is required you to have:

\* [Maven](https://maven.apache.org/) as your build tool

\* You can choose the IDE of your preference.

\* JDK 1.8+

\* [PostgreSQL](https://www.postgresql.org/)

## Dependencies

It is required you to have these dependencies:

\* [Spring Data JPA](https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-data-jpa)

\* [PostgreSQL Connector](https://mvnrepository.com/artifact/postgresql/postgresql)

\* [Spring WEB](https://mvnrepository.com/artifact/org.springframework/spring-web)

\* [JUnit](https://mvnrepository.com/artifact/junit/junit)

\* [JUnit Vintage Engine](https://mvnrepository.com/artifact/org.junit.vintage/junit-vintage-engine)

\* [Spring Boot Test Starter](https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-test)

\* [Spring Boot Maven Plugin](https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-maven-plugin)

## Getting Started

First, clone the project:

```bash

$ git clone

```

Second, configure the [database](#database).

Finally, open the project using your favorite IDE and install all the listed dependencies above and you should be able to run the project.

If everything works, you should see an Index Page [here](http://127.0.0.1:8080/).

## Database

1. Create a PostgreSQL database using the `cardealing.sql` script provided in the root folder.

1. Add credentials to `/src/main/resources/application.properties`.

The default ones are:

```

spring.datasource.driverClassName=org.postgresql.Driver

spring.datasource.url=jdbc:postgresql://localhost:5432/practical

spring.datasource.username=postgres

spring.jpa.database-platform=org.hibernate.dialect.PostgreSQLDialect

spring.jpa.show-sql=true

```

## REST Endpoints

### Car Endpoint

#### Just welcomes the user

@RequestMapping(&quot;&quot;)

public String helloCarDealing() {

    return &quot;Welcome to your car dealer&quot;;

}

#### Listing all the cars

@GetMapping(&quot;/cars&quot;)

public List\&lt;Car\&gt; getAllCars() {

    return carService.findAll();

}

#### List the cars using make of the car as a parameter

@GetMapping(&quot;/cars/{make}&quot;)

public List\&lt;Car\&gt; getCarsByMake(@PathVariable String make) {

    return carService.findAllByMake(make);

}

#### Listing the car using make and the model of the car as the parameters

@GetMapping(&quot;/cars/{make}/{model}&quot;)

public List\&lt;Car\&gt; getCarsByMakeAndModel(@PathVariable String make, @PathVariable String model) {

    return carService.findAllByMakeAndModel(make, model);

}

#### Listing the cars using make and fuel type of the car as the parameters

@GetMapping(&quot;/getCarsByMakeAndFuel/{make}/{fuel}&quot;)

public List\&lt;Car\&gt; getCarsByMakeAndFuel(@PathVariable String make, @PathVariable String fuel) {

    return carService.findAllByMakeAndFuel(make, fuel);

}

#### Listing the cars using fuel type parameter

@GetMapping(&quot;/carsbyfuel/{fuel}&quot;)

public List\&lt;Car\&gt; getCarsByFuel(@PathVariable String fuel) {

    return carService.findAllByFuel(fuel);

}

#### Saving a newly added car by the user

@PostMapping(path =&quot;/car/save&quot;)

public Car saveCar(@RequestBody CarInput carInput) {

    return carService.save(carInput);

}

### User Endpoint

#### Listing all the users

@GetMapping(&quot;/users&quot;)

public List\&lt;User\&gt; getAllUsers() {

    return userService.findAll();

}

#### Saving a newly added user

@PostMapping(path=&quot;/user/save&quot;)

public User saveUser(@RequestBody UserInput userInput) { return userService.save(userInput);}
