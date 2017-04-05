package com.airline.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.Flight;
import com.airline.models.Passenger;
import com.airline.models.Ticket;
import com.airline.service.FlightService;
import com.airline.service.PassengerService;
import com.airline.service.TicketService;

/**
 * Servlet implementation class Passengers
 */
@WebServlet("/Tickets")
public class Tickets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	@EJB
	TicketService ts;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tickets() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Ticket> tList = (List<Ticket>)ts.getTickets();
		request.setAttribute("ticket_list", tList);
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/ticket_list.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
