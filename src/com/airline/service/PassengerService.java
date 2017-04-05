package com.airline.service;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import com.airline.models.Flight;
import com.airline.models.Passenger;
import com.airline.models.Pilot;

/**
 * Session Bean implementation class PassengerService
 */
@Stateless
@LocalBean
public class PassengerService {

    /**
     * Default constructor. 
     */
    public PassengerService() {
        // TODO Auto-generated constructor stub
    }
    @PersistenceContext(unitName="airline")
    private EntityManager em;
    
    public void addPassenger(Passenger p){
    	
    	em.persist(p);
    }
    
    public List<Passenger> getPassengers(){
    	TypedQuery<Passenger> Query =em.createQuery("SELECT p from Passenger p",Passenger.class);
    	List<Passenger> pList = Query.getResultList();
    	return pList;
    }
    
    
   
    
    public void cancelPassenger(String passengerId) {
		 
		// TypedQuery<Ticket> tQuery = em.createNamedQuery("Ticket.DeleteById",
		//			Ticket.class);

				
		//	tQuery.setParameter("id", Integer.parseInt(ticketId));
			
		 Query q = em.createQuery ("DELETE FROM Passenger p WHERE p.id = :id");
		 q.setParameter ("id", Integer.parseInt(passengerId));
		 int deleted = q.executeUpdate ();
		 
	 }

}
