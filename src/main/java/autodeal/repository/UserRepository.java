package autodeal.repository;

import autodeal.input.UserInput;
import org.springframework.data.repository.CrudRepository;
import autodeal.pojo.User;

import java.util.List;

public interface UserRepository extends CrudRepository<User, String> {
    List<User> findAll();

    User save(User user);

    User findByEmail(String email);

    void delete(User user);
}