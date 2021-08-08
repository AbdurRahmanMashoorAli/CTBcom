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
@Table(name="ConducterDetails")
public class ConducterDetails {
	
	@Column(name="conLicNo")
	private int ConLicNo;
	
	@Column(name="conNIC")
	private int NIC;
	
	@Column(name="ConEmail")
	private String email;
	
	@Column(name="conName")
	private String name;

	/**
	 * @return the conLicNo
	 */
	public int getConLicNo() {
		return ConLicNo;
	}

	/**
	 * @param conLicNo the conLicNo to set
	 */
	public void setConLicNo(int conLicNo) {
		ConLicNo = conLicNo;
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
