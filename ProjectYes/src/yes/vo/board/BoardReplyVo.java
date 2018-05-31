package yes.vo.board;

import java.util.Date;

public class BoardReplyVo {		// �Խñ� ��� Vo
	
	private int brdno;			// �Խñ� ��ȣ (FK)
	private int reno;			// ��� ��ȣ (PK) ***
	private int userno;			// ����� ��ȣ(FK)
	private String rememo;		// ���
	private int reorder;		// ��� ����
	private Date redate;		// ��ϳ�¥
	private char redeleteflag;	// ��������
	private Date lastdate;		// ������¥
	
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
