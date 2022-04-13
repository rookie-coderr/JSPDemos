package jspDemo;

public class students {
	
	private String Fname;
	private String Lname;
	
	public students(String Fname,String Lname){
		this.Fname = Fname;
		this.Lname = Lname;
	}
	
	public void setFname(String Fname) {
		this.Fname = Fname;
	}
	
	public void seLname(String Lname) {
		this.Lname = Lname;
	}
	
	public String getFname() {
		return Fname;
	}
	
	public String getLanme() {
		return Lname;
	}
	

}
