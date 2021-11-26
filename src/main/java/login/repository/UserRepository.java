package login.repository;

import login.dao.UserDao;
import login.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends UserDao, CrudRepository<User, Long> {

    public User findByUsername(String username);

}
