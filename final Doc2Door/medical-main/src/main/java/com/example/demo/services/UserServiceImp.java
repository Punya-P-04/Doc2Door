package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;
@Service
public class UserServiceImp implements UserService {
	@Autowired
   private UserRepository userRepository;
	@Override
	public boolean registerUser(User user) {
		try {
			userRepository.save(user);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	@Override
	public User loginUser(String email,String password) {
		User Validuser = userRepository.findByEmail(email);
		if(Validuser != null && Validuser.getPassword().equals(password)) {
			return Validuser;
		}
		return null;
	}
	@Override
	public boolean regUser(User patient) {
		try {
			userRepository.save(patient);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	@Override
	public User logUser(String email,String password) {
		User Validuser = userRepository.findByEmail(email);
		if(Validuser != null && Validuser.getPassword().equals(password)) {
			return Validuser;
		}
		return null;
	}
	

	
	
}
