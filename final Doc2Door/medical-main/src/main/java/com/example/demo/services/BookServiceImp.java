package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Book;
import com.example.demo.repository.BookRepository;

@Service
public class BookServiceImp implements BookService{
	@Autowired
	   private BookRepository bookRepository;
	@Override
	public boolean appointUser(Book book) {
		try {
			bookRepository.save(book);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
}
