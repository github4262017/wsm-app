package com.wms.request.allocation;

import java.util.List;

public class FloorMapRequest {
	private String floorid;
	private List<String> seats;

	public String getFloorid() {
		return floorid;
	}

	public void setFloorid(String floorid) {
		this.floorid = floorid;
	}

	public List<String> getSeats() {
		return seats;
	}

	public void setSeats(List<String> seats) {
		this.seats = seats;
	}

}
