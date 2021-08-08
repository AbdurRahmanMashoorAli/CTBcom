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
@Table(name="ReservationDetails")
public class ReservationDetails {
	@Column(name="no_plate" ,nullable=false)
	private int No_Plate;
	
	@Column(name="noOfSeats")
	private int No_Seats;
	
	@Column(name="routeNo")
	private int RouteNo;

	/**
	 * @return the no_Plate
	 */
	public int getNo_Plate() {
		return No_Plate;
	}

	/**
	 * @param no_Plate the no_Plate to set
	 */
	public void setNo_Plate(int no_Plate) {
		No_Plate = no_Plate;
	}

	/**
	 * @return the no_Seats
	 */
	public int getNo_Seats() {
		return No_Seats;
	}

	/**
	 * @param no_Seats the no_Seats to set
	 */
	public void setNo_Seats(int no_Seats) {
		No_Seats = no_Seats;
	}

	/**
	 * @return the routeNo
	 */
	public int getRouteNo() {
		return RouteNo;
	}

	/**
	 * @param routeNo the routeNo to set
	 */
	public void setRouteNo(int routeNo) {
		RouteNo = routeNo;
	}
}
