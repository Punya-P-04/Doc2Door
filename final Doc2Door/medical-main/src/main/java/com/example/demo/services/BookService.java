package com.example.demo.services;

import org.springframework.stereotype.Service;

import com.example.demo.entity.Book;

@Service
public interface BookService {
	public boolean appointUser(Book book);
}
