package bean;

import java.util.ArrayList;
import java.util.List;

import javax.faces.event.ValueChangeEvent;
import javax.faces.model.SelectItem;


import service.EmployeeService;


import entity.EmployeeEntity;

public class EmployeeBean {

	private int regId;
	private String name;
	private float exp;
	private String technology;
	private String description;
	private String message;
	private List<EmployeeEntity> empList;
	private List<SelectItem> availableTechList;

	
	
	public EmployeeBean(){
		
		EmployeeService serv = new EmployeeService();
		this.availableTechList = new ArrayList<SelectItem>();
			
		
		try {
			for(String tec : serv.getAvailableTechs()) {
				availableTechList.add(new SelectItem(tec));
			}
		} catch (Exception e) {
			setMessage(e.getMessage());
		}
		
	}
	
	
	public String addEmployee(){
		
		EmployeeEntity empl = new EmployeeEntity();
		
		
		empl.setName(this.name);
		empl.setExperience(this.exp);
		empl.setTechnology(this.technology);
		empl.setDescription(this.description);
		
		try{
			int id = new EmployeeService().addEmployee(empl);
			setRegId(id);
			this.setMessage("Successfully Registered Employee with Id: "+id);
			return "success";
			
		}catch(Exception e){
			this.setMessage(e.getMessage());
			return "failure";
		}
		
	}
	
	
	public void getEmployeesByTechnology(ValueChangeEvent event){
		
		String Temp = (String)event.getNewValue();
		try {
			this.empList = new EmployeeService().getEmployeesByTechnology(Temp);
		} catch (Exception e) {
			setMessage(e.getMessage());
		}
		
	}
	
	
	
	
	public int getRegId() {
		return regId;
	}

	public void setRegId(int regId) {
		this.regId = regId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getExp() {
		return exp;
	}

	public void setExp(float exp) {
		this.exp = exp;
	}

	public String getTechnology() {
		return technology;
	}

	public void setTechnology(String technology) {
		this.technology = technology;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public List<EmployeeEntity> getEmpList() {
		return empList;
	}

	public void setEmpList(List<EmployeeEntity> empList) {
		this.empList = empList;
	}

	public List<SelectItem> getAvailableTechList() {
		return availableTechList;
	}

	public void setAvailableTechList(List<SelectItem> availableTechList) {
		this.availableTechList = availableTechList;
	}

}
