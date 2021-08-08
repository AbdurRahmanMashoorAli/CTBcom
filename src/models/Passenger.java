/**
 * 
 */
package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "passengerDetails")
public class Passenger {
	
	@Column(name="nicNo", nullable=false ,length=256)
	private int nicNo;
	
	@Column(name="Uname" , nullable=false)
	private String Uname;
	
	@Column(name="email" ,nullable=false)
	private String email;
	
	@Column(name="telePhoneNo" ,nullable=false)
	private int telePhoneNo;
	
	@Column(name="password" ,nullable=false ,length=256) 
	private String password;
	
	
	
	public int getNicNo() {
		return nicNo;
	}
	/**
	 * @param nicNo the nicNo to set
	 */
	public void setNicNo(int nicNo) {
		this.nicNo = nicNo;
	}
	/**
	 * @return the uname
	 */
	public String getUname() {
		return Uname;
	}
	/**
	 * @param uname the uname to set
	 */
	public void setUname(String uname) {
		Uname = uname;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the telePhoneNo
	 */
	public int getTelePhoneNo() {
		return telePhoneNo;
	}
	/**
	 * @param telePhoneNo the telePhoneNo to set
	 */
	public void setTelePhoneNo(int telePhoneNo) {
		this.telePhoneNo = telePhoneNo;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
}
