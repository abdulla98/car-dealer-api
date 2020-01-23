# car-dealer-api

This project contains the API for AutoDeal website, which is a service that provides users to buy and sell cars from there. 

This is also a service where users can create, read, update and delete cars. 

Dependencies needed for this project can be found in pom.xml file. 



## Table of Contents

1. [Tools](#tools)

1. [Dependencies](#dependencies)

1. [Getting Started](#getting-started)

1. [Database](#database)

1. [REST Endpoints](#rest-endpoints)

## Tools

For running it is required you to have:

* [Maven](https://maven.apache.org/) as your build tool

* You can choose the IDE of your preference.

* JDK 1.8+

* [PostgreSQL](https://www.postgresql.org/)

## Dependencies

It is required you to have these dependencies:

* [Spring Data JPA](https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-data-jpa)

* [PostgreSQL Connector](https://mvnrepository.com/artifact/postgresql/postgresql)

* [Spring WEB](https://mvnrepository.com/artifact/org.springframework/spring-web)

* [JUnit](https://mvnrepository.com/artifact/junit/junit)

* [JUnit Vintage Engine](https://mvnrepository.com/artifact/org.junit.vintage/junit-vintage-engine)

* [Spring Boot Test Starter](https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-test)

* [Spring Boot Maven Plugin](https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-maven-plugin)

## Getting Started

First, clone the project:

```bash

$ git clone https://github.com/abdulla98/car-dealer-api.git

```

Second, configure the [database](#database).

## Database

1. Create a PostgreSQL database using the `autodeal.sql` script provided in the root folder.

1. Add credentials to `/src/main/resources/application.properties`.

The default credentials are:

```

spring.datasource.driverClassName=org.postgresql.Driver

spring.datasource.url=jdbc:postgresql://localhost:5432/practical

spring.datasource.username=postgres

spring.jpa.database-platform=org.hibernate.dialect.PostgreSQLDialect

spring.jpa.show-sql=true

```

After you configure the database the next thing you should do is to open your IDE and install all the listed dependecies. If everything goes fine, you should be able to run the project and see a page [here](http://127.0.0.1:8080/).



## REST Endpoints

### Car Endpoints

Get all cars
* URL ```localhost:8080/cars```, METHOD = GET

Get cars by make
* URL ```localhost:8080/cars/{make}```, METHOD = GET 

Get cars by make and model
* URL ```localhost:8080/cars/{make}/{model}```, METHOD = GET 

Get cars by make and fuel
* URL ```localhost:8080/getCarsByMakeAndFuel/{make}/{fuel}```, METHOD = GET 

Get cars by fuel 
* URL ```localhost:8080/carsbyfuel/{fuel}```, METHOD = GET 

Insert a new car
* URL ```localhost:8080/car/save```, METHOT = POST
```
{
	"make": "Fiat",
	"model": "Punto",
	"description": "Full oprema, pali vozi",
	"fuel": "Diesel",
	"image": "https://en.wikipedia.org/wiki/Fiat_Punto#/media/File:2006_Fiat_Grande_Punto_Sporting_T-J_1.4_Front.jpg",
	"price": 2800,
	"power": "78KW",
	"mileage": 92000,
	"date": "22-01-2020",
	"username": "abdullabakija"
}
```

Delete a car
* URL ```localhost:8080/car/delete/{id}```, METHOD = DELETE

Update a car
* URL ```localhost:8080//car/update/{id}```, METHOD = PUT

### User Endpoints

There is no authentication provided for the user

Get all users
* URL ```localhost:8080/users```, METHOD = GET

Find a user by email
* URL ```localhost:8080/users/{email}```, METHOD = GET

Create a new user
* URL ```localhost:8080/save/user```, METHOD = POST

Delete a user
* URL ```localhost:8080/user/delete/{email}```, METHOD = DELETE


