package yes.entity.board;

import java.util.Date;

public class BoardReplyEntity {		// �Խñ� ��� Entity
	
	private int brdno;			// �Խñ� ��ȣ (FK)
	private int reno;			// ��� ��ȣ (PK) ***
	private int userno;			// ����� ��ȣ(FK)
	private String nickname;
	private String rememo;		// ���
	private int reorder;		// ��� ����
	private Date redate;		// ��ϳ�¥
	private char redeleteflag;	// ��������
	private Date lastdate;		// ������¥
	
	public BoardReplyEntity() {
		super();
	}
	
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "BoardReplyEntity [brdno=" + brdno + ", reno=" + reno + ", userno=" + userno + ", nickname=" + nickname
				+ ", rememo=" + rememo + ", reorder=" + reorder + ", redate=" + redate + ", redeleteflag="
				+ redeleteflag + ", lastdate=" + lastdate + "]";
	}

	public BoardReplyEntity(int brdno, int reno, int userno,String nickname, String rememo, int reorder, Date redate, char redeleteflag,
			Date lastdate) {
		super();
		this.brdno = brdno;
		this.reno = reno;
		this.userno = userno;
		this.nickname = nickname;
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