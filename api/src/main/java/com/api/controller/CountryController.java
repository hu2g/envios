package com.api.controller;
import com.api.entity.Country;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.api.service.CountryService;

@RestController
@RequestMapping("/country")
public class CountryController {
	@Autowired
	CountryService countryService;
	
	@GetMapping("/countries")
	public ResponseEntity<List<Country>> countries(){
		List<Country> lista = countryService.countries();
		return new ResponseEntity<>(lista, HttpStatus.OK);
	}
	
	
}
