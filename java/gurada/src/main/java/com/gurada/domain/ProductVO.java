package com.gurada.domain;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private String name;
	private int price;
	private int quantity; 
	private String receiptdate;
	private String categoryid;
	private String gender;
	private String psize;
	private String color;
	private String pdetail;
	private String productid;
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
	public String getReceiptdate() {
		return receiptdate;
	}
	public void setReceiptdate(String receiptdate) {
		this.receiptdate = receiptdate;
	}
	public String getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPsize() {
		return psize;
	}
	public void setPsize(String psize) {
		this.psize = psize;
	}
	public String getPdetail() {
		return pdetail;
	}
	public void setPdetail(String pdetail) {
		this.pdetail = pdetail;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
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
