package ramadlen.jwt.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import ramadlen.jwt.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

    Optional<User> findByUsername(String username);
}
