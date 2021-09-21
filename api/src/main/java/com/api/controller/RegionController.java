package com.api.controller;
import com.api.entity.Region;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.api.service.RegionService;

@RestController
@RequestMapping("/region")
public class RegionController {
	@Autowired
	RegionService regionService;
	
	@GetMapping("/regions")
	public ResponseEntity<List<Region>> lista(){
		List<Region> lista = regionService.region();
		return new ResponseEntity<>(lista, HttpStatus.OK);
	}
	
}
