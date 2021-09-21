package com.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.api.entity.Discount;
import com.api.service.DiscountService;

@RestController
@RequestMapping("/discount")
public class DiscountController {
	@Autowired
	DiscountService countryService;
	
	@GetMapping("/discounts")
	public ResponseEntity<List<Discount>> countries(){
		List<Discount> lista = countryService.discounts();
		return new ResponseEntity<>(lista, HttpStatus.OK);
	}
	
}
