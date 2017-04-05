package com.airline.service;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.Parameter;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import com.airline.models.Airplane;
import com.airline.models.Flight;
import com.airline.models.Pilot;
import com.airline.models.Passenger;

/**
 * Session Bean implementation class FlightService
 */
@Stateless
@LocalBean
public class FlightService {

	/**
	 * Default constructor.
	 */
	public FlightService() {
		// TODO Auto-generated constructor stub
	}

	@PersistenceContext(unitName = "airline")
	EntityManager em;

	public void addFlight(Flight f, Airplane a) {

		em.persist(f);
		em.persist(a);

	}

	public void addPilotToFlight(String pilotId, String flightId) {

		TypedQuery<Flight> fQuery = em.createNamedQuery("Flight.findById",Flight.class);

			
		fQuery.setParameter("id", Integer.parseInt(flightId));
				Flight f = fQuery.getSingleResult();

				TypedQuery<Pilot> pQuery = em.createNamedQuery("Pilot.findById",
				Pilot.class);

		pQuery.setParameter("id", Integer.parseInt(pilotId));

		Pilot p = pQuery.getSingleResult();
		
		List<Pilot> pList = f.getPilots();
		
		pList.add(p);
		
		f.setPilots(pList);
		
		p.setFlightForPilot(f);
		
	}
	
	public List<Flight>getFlights(){
		TypedQuery<Flight> query = em.createQuery("SELECT f FROM Flight f",Flight.class);
		List<Flight> results = query.getResultList();
		return results;
	}
	public void cancelFlight(String flightId) {
		 
		// TypedQuery<Ticket> tQuery = em.createNamedQuery("Ticket.DeleteById",
		//			Ticket.class);

				
		//	tQuery.setParameter("id", Integer.parseInt(ticketId));
			
		 Query q = em.createQuery ("DELETE FROM Flight f WHERE f.id = :id");
		 q.setParameter ("id", Integer.parseInt(flightId));
		 int deleted = q.executeUpdate ();
		 
	 }
}
