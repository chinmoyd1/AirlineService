package com.airline.service;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import com.airline.models.Flight;
import com.airline.models.Passenger;
import com.airline.models.Ticket;

/**
 * Session Bean implementation class PilotService
 */
@Stateless
@LocalBean 
public class TicketService {

	@PersistenceContext(unitName = "airline")
	EntityManager em;
    /**
     * Default constructor. 
     */
    public TicketService() {
        // TODO Auto-generated constructor stub
    }
    
	public void addTicket(String passengerId, String flightId, Ticket t) {

			em.persist(t);
		
		TypedQuery<Flight> fQuery = em.createNamedQuery("Flight.findById",
				Flight.class);

			
		fQuery.setParameter("id", Integer.parseInt(flightId));
				Flight f = fQuery.getSingleResult();

				TypedQuery<Passenger> pQuery = em.createNamedQuery("Passenger.findById",
				Passenger.class);

		pQuery.setParameter("id", Integer.parseInt(passengerId));

		Passenger p = pQuery.getSingleResult();
		
		//add ticket to flight
		List<Ticket> tList = f.getTickets();
	    tList.add(t);
		f.setTickets(tList);
		
		//add ticket to passenger
		List<Ticket> tiList = p.getTickets();
	    tiList.add(t);
	    p.setTickets(tiList);
	    
	    t.setPassengerDetail(p);
	    t.setFlightDetail(f);
		
	}

	 public List<Ticket> getTickets(){
	    	TypedQuery<Ticket> Query =em.createQuery("SELECT t from Ticket t",Ticket.class);
	    	List<Ticket> tList = Query.getResultList();
	    	return tList;
	    }
	 
	 public void cancelTicket(String ticketId) {
		 
		// TypedQuery<Ticket> tQuery = em.createNamedQuery("Ticket.DeleteById",
		//			Ticket.class);

				
		//	tQuery.setParameter("id", Integer.parseInt(ticketId));
			
		 Query q = em.createQuery ("DELETE FROM Ticket t WHERE t.id = :id");
		 q.setParameter ("id", Integer.parseInt(ticketId));
		 int deleted = q.executeUpdate ();
		 
	 }
	 
	
    
}
