package com.home.dto;

public class Food {
	
	private int food_id;
	private int chef_id;
	private String food_name;
	private String description;
	private double price;
	private String image_url;
	private String status;


	public Food(int chefId, String fname, String description,double price, String image, String status) {

    this.chef_id = chefId;
    this.food_name = fname;
    this.description = description;
    this.price = price;
    this.image_url = image;
    this.status = status;
}



	public Food() {
		// TODO Auto-generated constructor stub
	}



	public int getFood_id() {
		return food_id;
	}

	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}

	public int getChef_id() {
		return chef_id;
	}

	public void setChef_id(int chef_id) {
		this.chef_id = chef_id;
	}

	public String getFood_name() {
		return food_name;
	}

	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
	

}
