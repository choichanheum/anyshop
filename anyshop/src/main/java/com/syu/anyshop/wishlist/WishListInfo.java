package com.syu.anyshop.wishlist;

public class WishListInfo {
	private String id;
	private String image;
	private String product;
	private int quantity;
	private int price;
	
	
	public WishListInfo() {
		super();
	}


	public WishListInfo(String id, String image, String product, int quantity, int price) {
		super();
		this.id = id;
		this.image = image;
		this.product = product;
		this.quantity = quantity;
		this.price = price;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public String getProduct() {
		return product;
	}


	public void setProduct(String product) {
		this.product = product;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	@Override
	public String toString() {
		return "WishListInfo [id=" + id + ", image=" + image + ", product=" + product + ", quantity=" + quantity
				+ ", price=" + price + "]";
	}
	
	
	
	
	
}


