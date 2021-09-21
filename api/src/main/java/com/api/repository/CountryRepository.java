package com.api.repository;

import com.api.entity.Country;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends JpaRepository<Country, Integer>{
	@Query(value = "{ call countries() }", nativeQuery = true)
	List<Country> countries();
}
