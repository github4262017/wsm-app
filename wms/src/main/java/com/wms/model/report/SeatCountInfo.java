package com.wms.model.report;

import java.io.Serializable;

public class SeatCountInfo implements Serializable{

	private int ws=0;
	private int cabin=0;
	private int odc=0;
	private int total=0;
	public int getWs() {
		return ws;
	}
	public void setWs(int ws) {
		this.ws = ws;
	}
	public int getCabin() {
		return cabin;
	}
	public void setCabin(int cabin) {
		this.cabin = cabin;
	}
	public int getOdc() {
		return odc;
	}
	public void setOdc(int odc) {
		this.odc = odc;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	} 
}
