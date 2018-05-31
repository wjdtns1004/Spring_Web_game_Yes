package yes.vo.board;

import java.util.Date;

public class BoardLikeVo {	// 게시글 좋아요  Vo
	
	private int blno;		// 좋아요 순번(PK) ***
	private int brdno;		// 게시글번호(FK)
	private int userno;		// 사용자번호(FK)
	private Date bldate;	// 좋아요 등록 날짜
	
	public BoardLikeVo() {
		super();
	}
	public BoardLikeVo(int blno, int brdno, int userno, Date bldate) {
		super();
		this.blno = blno;
		this.brdno = brdno;
		this.userno = userno;
		this.bldate = bldate;
	}
	
	/** getter && setter **/
	public int getBlno() {
		return blno;
	}
	public void setBlno(int blno) {
		this.blno = blno;
	}
	public int getBrdno() {
		return brdno;
	}
	public void setBrdno(int brdno) {
		this.brdno = brdno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public Date getBldate() {
		return bldate;
	}
	public void setBldate(Date bldate) {
		this.bldate = bldate;
	}
}
