package logic;

import java.util.Date;

public class Visit {
	private Date visitdate;
	private int visitcnt;
	private int invest_m;
	public Date getVisitdate() {
		return visitdate;
	}
	public void setVisitdate(Date visitdate) {
		this.visitdate = visitdate;
	}
	public int getVisitcnt() {
		return visitcnt;
	}
	public void setVisitcnt(int visitcnt) {
		this.visitcnt = visitcnt;
	}
	public int getInvest_m() {
		return invest_m;
	}
	public void setInvest_m(int invest_m) {
		this.invest_m = invest_m;
	}
}
