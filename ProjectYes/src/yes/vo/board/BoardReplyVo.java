package yes.vo.board;

import java.util.Date;

public class BoardReplyVo {		// 게시글 댓글 Vo
	
	private int brdno;			// 게시글 번호 (FK)
	private int reno;			// 댓글 번호 (PK) ***
	private int userno;			// 사용자 번호(FK)
	private String rememo;		// 댓글
	private int reorder;		// 댓글 순번
	private Date redate;		// 등록날짜
	private char redeleteflag;	// 삭제여부
	private Date lastdate;		// 수정날짜
	
	@Override
	public String toString() {
		return "BoardReplyVo [brdno=" + brdno + ", reno=" + reno + ", userno=" + userno + ", rememo=" + rememo
				+ ", reorder=" + reorder + ", redate=" + redate + ", redeleteflag=" + redeleteflag + ", lastdate="
				+ lastdate + "]";
	}
	public BoardReplyVo() {
		super();
	}
	public BoardReplyVo(int brdno, int reno, int userno, String rememo, int reorder, Date redate, char redeleteflag,
			Date lastdate) {
		super();
		this.brdno = brdno;
		this.reno = reno;
		this.userno = userno;
		this.rememo = rememo;
		this.reorder = reorder;
		this.redate = redate;
		this.redeleteflag = redeleteflag;
		this.lastdate = lastdate;
	}
	
	/** getter & setter **/
	public int getBrdno() {
		return brdno;
	}
	public void setBrdno(int brdno) {
		this.brdno = brdno;
	}
	public int getReno() {
		return reno;
	}
	public void setReno(int reno) {
		this.reno = reno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getRememo() {
		return rememo;
	}
	public void setRememo(String rememo) {
		this.rememo = rememo;
	}
	public int getReorder() {
		return reorder;
	}
	public void setReorder(int reorder) {
		this.reorder = reorder;
	}
	public Date getRedate() {
		return redate;
	}
	public void setRedate(Date redate) {
		this.redate = redate;
	}
	public char getRedeleteflag() {
		return redeleteflag;
	}
	public void setRedeleteflag(char redeleteflag) {
		this.redeleteflag = redeleteflag;
	}
	public Date getLastdate() {
		return lastdate;
	}
	public void setLastdate(Date lastdate) {
		this.lastdate = lastdate;
	}
}
