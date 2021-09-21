package com.api.repository;

import com.api.entity.Discount;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface DiscountRepository extends JpaRepository<Discount, Integer>{
	@Query(value = "{ call discounts() }", nativeQuery = true)
	List<Discount> discounts();
}
