package declare.model.vo;

public class Noti_Declare {

	private int n_d_no;
	private int noti_no;
	private int m_no;
	private String contents;
	private String enroll_date;
	private String comp_date;
	private String status;
	public Noti_Declare() {
		super();
	}
	public Noti_Declare(int n_d_no, int noti_no, int m_no, String contents, String enroll_date, String comp_date,
			String status) {
		super();
		this.n_d_no = n_d_no;
		this.noti_no = noti_no;
		this.m_no = m_no;
		this.contents = contents;
		this.enroll_date = enroll_date;
		this.comp_date = comp_date;
		this.status = status;
	}
	public int getN_d_no() {
		return n_d_no;
	}
	public void setN_d_no(int n_d_no) {
		this.n_d_no = n_d_no;
	}
	public int getNoti_no() {
		return noti_no;
	}
	public void setNoti_no(int noti_no) {
		this.noti_no = noti_no;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getEnroll_date() {
		return enroll_date;
	}
	public void setEnroll_date(String enroll_date) {
		this.enroll_date = enroll_date;
	}
	public String getComp_date() {
		return comp_date;
	}
	public void setComp_date(String comp_date) {
		this.comp_date = comp_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Noti_Declare [n_d_no=" + n_d_no + ", noti_no=" + noti_no + ", m_no=" + m_no + ", contents=" + contents
				+ ", enroll_date=" + enroll_date + ", comp_date=" + comp_date + ", status=" + status + "]";
	}
	
}
