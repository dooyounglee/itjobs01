package declare.model.vo;

public class Re_Declare {

	private int r_d_no;
	private int re_no;
	private int m_no;
	private String contents;
	private String enroll_date;
	private String comp_date;
	private String status;
	public Re_Declare() {
		super();
	}
	public Re_Declare(int r_d_no, int re_no, int m_no, String contents, String enroll_date, String comp_date,
			String status) {
		super();
		this.r_d_no = r_d_no;
		this.re_no = re_no;
		this.m_no = m_no;
		this.contents = contents;
		this.enroll_date = enroll_date;
		this.comp_date = comp_date;
		this.status = status;
	}
	public int getR_d_no() {
		return r_d_no;
	}
	public void setR_d_no(int r_d_no) {
		this.r_d_no = r_d_no;
	}
	public int getRe_no() {
		return re_no;
	}
	public void setRe_no(int re_no) {
		this.re_no = re_no;
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
		return "Re_Declare [r_d_no=" + r_d_no + ", re_no=" + re_no + ", m_no=" + m_no + ", contents=" + contents
				+ ", enroll_date=" + enroll_date + ", comp_date=" + comp_date + ", status=" + status + "]";
	}
	
}
