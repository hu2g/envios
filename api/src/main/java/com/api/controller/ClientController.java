package com.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.api.entity.Client;
import com.api.service.ClientService;

@RestController
@RequestMapping("/customer")
public class ClientController {
	@Autowired
	ClientService clientService;
	
	@GetMapping("/customers")
	public ResponseEntity<List<Client>> countries(){
		List<Client> lista = clientService.clients();
		return new ResponseEntity<>(lista, HttpStatus.OK);
	}
	
	
}