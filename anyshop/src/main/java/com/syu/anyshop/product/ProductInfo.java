package com.syu.anyshop.product;

public class ProductInfo {
	private int product_id;
	private String product_name;
	private int product_price;
	private String product_info;
	private String product_img;
	
	
	public ProductInfo() {
		super();
	}


	public ProductInfo(int product_id, String product_name, int product_price, String product_info,
			String product_img) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_info = product_info;
		this.product_img = product_img;
	}


	public int getProduct_id() {
		return product_id;
	}


	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}


	public String getProduct_name() {
		return product_name;
	}


	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}


	public int getProduct_price() {
		return product_price;
	}


	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}


	public String getProduct_info() {
		return product_info;
	}


	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}


	public String getProduct_img() {
		return product_img;
	}


	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}


	@Override
	public String toString() {
		return "ProductInfo [product_id=" + product_id + ", product_name=" + product_name + ", product_price="
				+ product_price + ", product_info=" + product_info + ", product_img=" + product_img + "]";
	}
	
	
}


