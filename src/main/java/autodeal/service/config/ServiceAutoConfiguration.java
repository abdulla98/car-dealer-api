package autodeal.service.config;

import autodeal.service.CarService;
import autodeal.service.DefaultCarService;
import autodeal.service.DefaultUserService;
import autodeal.service.UserService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ServiceAutoConfiguration {

    @Bean
    public CarService carService() {
        return new DefaultCarService();
    }

    @Bean
    public UserService userService() {
        return new DefaultUserService();
    }


}
