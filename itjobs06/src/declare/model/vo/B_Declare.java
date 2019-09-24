package declare.model.vo;

public class B_Declare {

	private int b_d_no;
	private int b_no;
	private int m_no;
	private String contents;
	private String enroll_date;
	private String comp_date;
	private String status;
	public B_Declare() {
		super();
	}
	public B_Declare(int b_d_no, int b_no, int m_no, String contents, String enroll_date, String comp_date,
			String status) {
		super();
		this.b_d_no = b_d_no;
		this.b_no = b_no;
		this.m_no = m_no;
		this.contents = contents;
		this.enroll_date = enroll_date;
		this.comp_date = comp_date;
		this.status = status;
	}
	public int getB_d_no() {
		return b_d_no;
	}
	public void setB_d_no(int b_d_no) {
		this.b_d_no = b_d_no;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
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
		return "BoardDeclare [b_d_no=" + b_d_no + ", b_no=" + b_no + ", m_no=" + m_no + ", contents=" + contents
				+ ", enroll_date=" + enroll_date + ", comp_date=" + comp_date + ", status=" + status + "]";
	}
	
}
