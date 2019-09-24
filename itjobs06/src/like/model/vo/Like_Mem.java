package like.model.vo;

public class Like_Mem {

	private int like_m_no;
	private int resume_no;
	private int co_no;
	public Like_Mem() {
		super();
	}
	public Like_Mem(int like_m_no, int resume_no, int co_no) {
		super();
		this.like_m_no = like_m_no;
		this.resume_no = resume_no;
		this.co_no = co_no;
	}
	public int getLike_m_no() {
		return like_m_no;
	}
	public void setLike_m_no(int like_m_no) {
		this.like_m_no = like_m_no;
	}
	public int getResume_no() {
		return resume_no;
	}
	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}
	public int getCo_no() {
		return co_no;
	}
	public void setCo_no(int co_no) {
		this.co_no = co_no;
	}
	@Override
	public String toString() {
		return "Like_Mem [like_m_no=" + like_m_no + ", resume_no=" + resume_no + ", co_no=" + co_no + "]";
	}
	
}
