package com.example.demo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private int id;
	@Column
	private String Pname;
	@Column
	private String Pphno;
	@Column
	private String Pdate;
	@Column
	private String Ptime;
	@Column
	private String Pdescription;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
	}
	public String getPphno() {
		return Pphno;
	}
	public void setPphno(String pphno) {
		Pphno = pphno;
	}
	public String getPdate() {
		return Pdate;
	}
	public void setPdate(String pdate) {
		Pdate = pdate;
	}
	public String getPtime() {
		return Ptime;
	}
	public void setPtime(String ptime) {
		Ptime = ptime;
	}
	public String getPdescription() {
		return Pdescription;
	}
	public void setPdescription(String pdescription) {
		Pdescription = pdescription;
	}
}
