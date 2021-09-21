package com.api.service;
import com.api.entity.Discount;
import com.api.repository.DiscountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class DiscountService {

	@Autowired
	DiscountRepository discountRepository;

	public List<Discount> discounts(){
		return discountRepository.discounts();
	}
}