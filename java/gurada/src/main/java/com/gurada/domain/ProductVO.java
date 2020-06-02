package com.gurada.domain;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private String name;
	private int price;
	private int quantity; 
	private String receiptDate;
	private String categoryId;
	private String gender;
	private String pSize;
	private String color;
	private String pDetail;
	private String productId;
	private String pip;
	private String pfname;
	private long pfsize;
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		if(!file.isEmpty()) {
			//MultipartFile에서 파일명과 크기만 얻어오기 >>DB에 입력하기 위해서
			this.pfname = file.getOriginalFilename(); //파일명
			this.pfsize = file.getSize(); //파일사이즈

			//실제파일로 저장하기
			File f= new File("C:\\Users\\Canon\\Documents\\GitHub\\gurada\\java\\gurada\\src\\main\\webapp\\resources\\upload\\" + pfname); //괄호 안에 진짜경로
			try {
				file.transferTo(f);
			} catch (IOException e) {
				System.out.println("파일전송실패" + e.getMessage());
				e.printStackTrace();
			}
		}
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getReceiptDate() {
		return receiptDate;
	}
	public void setReceiptDate(String receiptDate) {
		this.receiptDate = receiptDate;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getpSize() {
		return pSize;
	}
	public void setpSize(String pSize) {
		this.pSize = pSize;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getPDetail() {
		return pDetail;
	}
	public void setPDetail(String pDetail) {
		this.pDetail = pDetail;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getPip() {
		return pip;
	}
	public void setPip(String pip) {
		this.pip = pip;
	}
	public String getPfname() {
		return pfname;
	}
	public void setPfname(String pfname) {
		this.pfname = pfname;
	}
	public long getPfsize() {
		return pfsize;
	}
	public void setPfsize(long pfsize) {
		this.pfsize = pfsize;
	}
	
	
	
	
	
}
