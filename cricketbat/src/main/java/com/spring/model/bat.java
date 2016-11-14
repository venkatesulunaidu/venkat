package com.spring.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "bat")
public class bat implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "SID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int sid;
	@Column(name = "brand")
	@NotEmpty(message = "Brand is mandatory")
	private String Brand;
	
	@Column(name = "price")
	private double price;
	

	@ManyToOne
	@JoinColumn(name = "cid")
	private Category category;
	
	
	@Transient
	private MultipartFile batImage;

public int getSid() {
		return sid;
	}


	public void setSid(int sid) {
		this.sid = sid;
	}


	public String getBrand() {
		return Brand;
	}


	public void setBrand(String brand) {
		Brand = brand;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public Category getCategory() {
		return category;
	}


	public void setCategory(Category category) {
		this.category = category;
	}


	public MultipartFile getBatImage() {
		return batImage;
	}


	public void setBatImage(MultipartFile batImage) {
		this.batImage = batImage;
	}

}


