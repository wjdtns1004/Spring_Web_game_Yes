package yes.vo.board;

import java.util.Date;

public class BoardLikeVo {	// �Խñ� ���ƿ�  Vo
	
	private int blno;		// ���ƿ� ����(PK) ***
	private int brdno;		// �Խñ۹�ȣ(FK)
	private int userno;		// ����ڹ�ȣ(FK)
	private Date bldate;	// ���ƿ� ��� ��¥
	
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
