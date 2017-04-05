package com.airline.models;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Passenger
 *
 */
@NamedQuery(name = "Ticket.DeleteById", query="DELETE FROM Ticket t WHERE t.id = :id")
@Entity
public class Ticket implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public Ticket() {
		super();
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	
	@Enumerated(EnumType.STRING)
	private FlightClass flightClass;
	  
	@ManyToOne
	@JoinColumn(name = "flight_fk")
	private Flight flightDetail;
	
	@ManyToOne
	@JoinColumn(name = "paseenger_fk")
	private Passenger passengerDetail;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public FlightClass getFlightClass() {
		return flightClass;
	}

	public void setFlightClass(FlightClass flightClass) {
		this.flightClass = flightClass;
	}

	public Flight getFlightDetail() {
		return flightDetail;
	}

	public void setFlightDetail(Flight flightDetail) {
		this.flightDetail = flightDetail;
	}

	public Passenger getPassengerDetail() {
		return passengerDetail;
	}

	public void setPassengerDetail(Passenger passengerDetail) {
		this.passengerDetail = passengerDetail;
	}

	@Override
	public String toString() {
		return "Ticket [id=" + id + ", flightClass=" + flightClass
				+ ", flightDetail=" + flightDetail + ", passengerDetail="
				+ passengerDetail + "]";
	}

	
	
	

}
