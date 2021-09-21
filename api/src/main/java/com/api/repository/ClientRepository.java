package com.api.repository;

import com.api.entity.Client;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientRepository extends JpaRepository<Client, Integer>{
	@Query(value = "{ call customers() }", nativeQuery = true)
	List<Client> clients();
}