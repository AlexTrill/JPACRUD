
package com.skilldistillery.submissions.etities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Submission {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	
	private String type;
	
	@Column(name = "gi_required")
	private String giRequired;
	
	@Column(name = "positions_commonly_executed_from")
	private String executedFrom;
	
	private String specialists;
	
	@Column(name = "also_known_as")
	private String aka;
	
	private String tutorial;
	
	private String image;
	
	

	public Submission() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Submission [id=" + id + ", name=" + name + ", type=" + type + ", giRequired=" + giRequired
				+ ", executedFrom=" + executedFrom + ", specialists=" + specialists + ", aka=" + aka + "]";
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getGiRequired() {
		return giRequired;
	}

	public void setGiRequired(String giRequired) {
		this.giRequired = giRequired;
	}


	public String getSpecialists() {
		return specialists;
	}

	public void setSpecialists(String specialists) {
		this.specialists = specialists;
	}

	public String getAka() {
		return aka;
	}

	public void setAka(String aka) {
		this.aka = aka;
	}

	public String getExecutedFrom() {
		return executedFrom;
	}

	public void setExecutedFrom(String executedFrom) {
		this.executedFrom = executedFrom;
	}

	public String getTutorial() {
		return tutorial;
	}

	public void setTutorial(String tutorial) {
		this.tutorial = tutorial;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
