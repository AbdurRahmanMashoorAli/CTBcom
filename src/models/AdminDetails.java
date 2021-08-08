/**
 * 
 */
package models;

/**
 * @author Izmil
 *
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AdminDetails")
public class AdminDetails {
	
	@Column(name="Uname",nullable=false)
	private String Uname;
	
	@Column(name="password",nullable=false)
	private String password;

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
