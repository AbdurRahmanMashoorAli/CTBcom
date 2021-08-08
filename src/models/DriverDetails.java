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
@Table(name="DriverDetails")
public class DriverDetails {
	@Column(name="driLicNo",nullable=false)
	private int DriLicNo;
	
	@Column(name="driNIC")
	private int NIC;
	
	@Column(name="Demail")
	private String email;
	
	@Column(name="DriName")
	private String name;

	/**
	 * @return the driLicNo
	 */
	public int getDriLicNo() {
		return DriLicNo;
	}

	/**
	 * @param driLicNo the driLicNo to set
	 */
	public void setDriLicNo(int driLicNo) {
		DriLicNo = driLicNo;
	}

	/**
	 * @return the nIC
	 */
	public int getNIC() {
		return NIC;
	}

	/**
	 * @param nIC the nIC to set
	 */
	public void setNIC(int nIC) {
		NIC = nIC;
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

}
