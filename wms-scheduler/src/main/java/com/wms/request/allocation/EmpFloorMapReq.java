package com.wms.request.allocation;

import java.util.List;

public class EmpFloorMapReq {

	private String floorid;
	private List<SeatAssign> seats;
	public String getFloorid() {
		return floorid;
	}
	public void setFloorid(String floorid) {
		this.floorid = floorid;
	}
	public List<SeatAssign> getSeats() {
		return seats;
	}
	public void setSeats(List<SeatAssign> seats) {
		this.seats = seats;
	}
    
}

	

