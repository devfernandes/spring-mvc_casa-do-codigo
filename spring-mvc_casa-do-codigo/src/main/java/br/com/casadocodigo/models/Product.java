package br.com.casadocodigo.models;

public class Product {
	private Integer id;
	private String title;
	private String description;
	private int pages;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPages() {
		return pages;
	}

	public void setPages(int pages) {
		this.pages = pages;
	}
	
	@Override
	public String toString() {
		return "ID: " + id +
				"\nTitle: " + title +
				"\nDescription: " + description + 
				"\nPages: " + pages;
	}
}
