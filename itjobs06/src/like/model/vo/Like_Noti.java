package like.model.vo;

public class Like_Noti {

	private int like_Noti_no;
	private int noti_no;
	private int m_no;
	public Like_Noti() {
		super();
	}
	public Like_Noti(int like_Noti_no, int noti_no, int m_no) {
		super();
		this.like_Noti_no = like_Noti_no;
		this.noti_no = noti_no;
		this.m_no = m_no;
	}
	public int getLike_Noti_no() {
		return like_Noti_no;
	}
	public void setLike_Noti_no(int like_Noti_no) {
		this.like_Noti_no = like_Noti_no;
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
	@Override
	public String toString() {
		return "Like_Noti [like_Noti_no=" + like_Noti_no + ", noti_no=" + noti_no + ", m_no=" + m_no + "]";
	}
	
}
