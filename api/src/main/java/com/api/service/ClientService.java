package com.api.service;

import com.api.entity.Client;
import com.api.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ClientService {

	@Autowired
	ClientRepository clientRepository;

	public List<Client> clients(){
		return clientRepository.clients();
	}
}