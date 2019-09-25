package com.kh.volunteer.model.vo;

public class Volunteer {

	private int v_no;
	private int noti_no;
	private int resume_no;
	private String v_date;
	private String status;
	public Volunteer() {
		super();
	}
	public Volunteer(int v_no, int noti_no, int resume_no, String v_date, String status) {
		super();
		this.v_no = v_no;
		this.noti_no = noti_no;
		this.resume_no = resume_no;
		this.v_date = v_date;
		this.status = status;
	}
	public int getV_no() {
		return v_no;
	}
	public void setV_no(int v_no) {
		this.v_no = v_no;
	}
	public int getNoti_no() {
		return noti_no;
	}
	public void setNoti_no(int noti_no) {
		this.noti_no = noti_no;
	}
	public int getResume_no() {
		return resume_no;
	}
	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}
	public String getV_date() {
		return v_date;
	}
	public void setV_date(String v_date) {
		this.v_date = v_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Volunteer [v_no=" + v_no + ", noti_no=" + noti_no + ", resume_no=" + resume_no + ", v_date=" + v_date
				+ ", status=" + status + "]";
	}
	
}
