package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.entity.Book;
import com.example.demo.entity.User;
import com.example.demo.services.BookService;
import com.example.demo.services.UserService;
@Controller
public class control {
	@Autowired
	private UserService userService;
	
	
	@Autowired
	private BookService bookService;
	
	
	
	@GetMapping("/PatPage")
	  public String OpenPPage(Model model) {
			model.addAttribute("patient",new User());
		  return "reg";
	  }
	@PostMapping("/PatForm")
	public String PatForm(@ModelAttribute("user") User patient,Model model) {
		boolean status = userService.regUser(patient);
		if(status) {
			model.addAttribute("successMsg","User registered Successfully");
		}else {
			model.addAttribute("errorMsg","User not registered due to error");
		}
		return "prof1";
}
	@GetMapping("/PatLoginPage")
	public String LoginPage(Model model) {
		model.addAttribute("patient",new User());
		return "log";
	}
	@PostMapping("/PatLoginForm")
	public String LoginForm(@ModelAttribute("patient") User patient,Model model) {
		User ValidUser = userService.logUser(patient.getEmail(),patient.getPassword());
		if(ValidUser!=null) {
			model.addAttribute("modelname", ValidUser.getName());
			return "prof1";
		}else {
			model.addAttribute("errorMsg","Email and password doestn't match!!!");
			return "log";
		}
	
	}
//	@GetMapping("/req")
//	public String ReqHome() {
//		
//		return "homerequest";
//	}
	@GetMapping("/Homevisit")
	public String Homereq() {
		
		
		return "homerequest";
	}
	
	
	
	
	
	@GetMapping("/Appoint")
	public String AppointPage(Model model) {
		model.addAttribute("book",new Book());
		return "appointment";
	}
	
	
	@PostMapping("/AppointForm")
	public String appointform(@ModelAttribute("book") Book book,Model model) {
		boolean status = bookService.appointUser(book);
		if(status) {
			model.addAttribute("successMsg","User registered Successfully");
		}else {
			model.addAttribute("errorMsg","User not registered due to error");
		}
		
		return "appointment";
	}
	
	
	
	
	@GetMapping("/Medicin")
	public String Med() {
		
		return "medicine";
	}
	@GetMapping("/whygine")
	public String hyg() {
		
		return "hygine";
	}
	@GetMapping("/Records")
	public String rec() {
		
		return "records";
	}


}
