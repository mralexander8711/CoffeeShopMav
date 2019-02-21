package co.grandcircus.SPRINGLAB;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
private String firstName;	
private String lastName;	
private String email;
private String number;
private String psw;

public User() {}

public User(Long id, String firstName, String lastName, String email, String number, String psw ) {
	this.id= id;
	this.firstName= firstName;
	this.lastName= lastName;
	this.email=email;
	this.number=number;
	this.psw=psw;


}

public Long getId() {
	return id;
}

public void setId(Long id) {
	this.id = id;
}

public String getFirstName() {
	return firstName;
}

public void setFirstName(String firstName) {
	this.firstName = firstName;
}

public String getLastName() {
	return lastName;
}

public void setLastName(String lastName) {
	this.lastName = lastName;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getNumber() {
	return number;
}

public void setNumber(String number) {
	this.number = number;
}

public String getPsw() {
	return psw;
}

public void setPsw(String psw) {
	this.psw = psw;
}

}	
	
	

