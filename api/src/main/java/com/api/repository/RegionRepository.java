package com.api.repository;

import com.api.entity.Region;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface RegionRepository extends JpaRepository<Region, Integer>{
	@Query(value = "{ call regions() }", nativeQuery = true)
	List<Region> regions();
}
