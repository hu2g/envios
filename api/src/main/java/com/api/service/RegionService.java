package com.api.service;

import com.api.entity.Region;
import com.api.repository.RegionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class RegionService {

	@Autowired
	RegionRepository regionRepository;
	public List<Region> region(){
		return regionRepository.regions();
	}
}