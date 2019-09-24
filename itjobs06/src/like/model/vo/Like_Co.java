package like.model.vo;

public class Like_Co {

	private int like_co_no;
	private int m_no;
	private int co_no;
	public Like_Co() {
		super();
	}
	public Like_Co(int like_co_no, int m_no, int co_no) {
		super();
		this.like_co_no = like_co_no;
		this.m_no = m_no;
		this.co_no = co_no;
	}
	public int getLike_co_no() {
		return like_co_no;
	}
	public void setLike_co_no(int like_co_no) {
		this.like_co_no = like_co_no;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public int getCo_no() {
		return co_no;
	}
	public void setCo_no(int co_no) {
		this.co_no = co_no;
	}
	@Override
	public String toString() {
		return "Like_Co [like_co_no=" + like_co_no + ", m_no=" + m_no + ", co_no=" + co_no + "]";
	}
	
}
