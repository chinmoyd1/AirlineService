package com.airline.service;



import javax.ejb.LocalBean;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;



import com.airline.models.uRegistration;

/**
 * Session Bean implementation class PassengerService
 */
@Stateful
@LocalBean
public class UserService {

    /**
     * Default constructor. 
     */
    public UserService() {
        // TODO Auto-generated constructor stub
    }
    @PersistenceContext(unitName="airline")
    private EntityManager em;
    
    public void addUser(uRegistration u){
    	
    	em.persist(u);
    }
    

  
 }
