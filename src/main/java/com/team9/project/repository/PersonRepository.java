package com.team9.project.repository;

import com.team9.project.domain.Person;
<<<<<<< HEAD
import com.team9.project.domain.Repair;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

=======
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
>>>>>>> 46b00b9d5d5e902ffe4d1ab83b9d1a9223a72ffc
import java.util.List;
import java.util.Optional;

@Repository
public interface PersonRepository extends JpaRepository<Person, Long> {
<<<<<<< HEAD

    List<Person> findAll();

    Optional<Person> findById(Long Id);

    List<Person> findByemailAndPassword(String email, String password);


=======
>>>>>>> 46b00b9d5d5e902ffe4d1ab83b9d1a9223a72ffc
}
