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
@Table(name="DriverandConducterDetails")
public class DriverandConducter {
	@Column(name="LiNo")
	private int LicNo;
	
	@Column(name="password")
	private String password;

	/**
	 * @return the licNo
	 */
	public int getLicNo() {
		return LicNo;
	}

	/**
	 * @param licNo the licNo to set
	 */
	public void setLicNo(int licNo) {
		LicNo = licNo;
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
