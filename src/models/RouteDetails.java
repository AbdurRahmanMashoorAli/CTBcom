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
@Table(name="RouteDetails")
public class RouteDetails {
	
	@Column(name="RouteNo",nullable=false)
	private int Route_No;
	
	@Column(name="Departure")
	private int Departure;
	
	@Column(name="Arrival")
	private int Arrival;
	
	@Column(name="numOfTimes")
	private int num_times;
	/**
	 * @return the route_No
	 */
	public int getRoute_No() {
		return Route_No;
	}
	/**
	 * @param route_No the route_No to set
	 */
	public void setRoute_No(int route_No) {
		Route_No = route_No;
	}
	/**
	 * @return the departure
	 */
	public int getDeparture() {
		return Departure;
	}
	/**
	 * @param departure the departure to set
	 */
	public void setDeparture(int departure) {
		Departure = departure;
	}
	/**
	 * @return the arrival
	 */
	public int getArrival() {
		return Arrival;
	}
	/**
	 * @param arrival the arrival to set
	 */
	public void setArrival(int arrival) {
		Arrival = arrival;
	}
	/**
	 * @return the num_times
	 */
	public int getNum_times() {
		return num_times;
	}
	/**
	 * @param num_times the num_times to set
	 */
	public void setNum_times(int num_times) {
		this.num_times = num_times;
	}
}
