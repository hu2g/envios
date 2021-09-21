package com.api.service;
import com.api.entity.Country;
import com.api.repository.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CountryService {

	@Autowired
	CountryRepository countryRepository;

	public List<Country> countries(){
		return countryRepository.countries();
	}
}
