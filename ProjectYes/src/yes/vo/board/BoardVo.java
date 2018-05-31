package yes.vo.board;

import java.util.Date;

public class BoardVo {
	@Override
	public String toString() {
		return "BoardVo [brdno=" + brdno + ", bgno=" + bgno + ", brdtitle=" + brdtitle + ", userno=" + userno
				+ ", brdmemo=" + brdmemo + ", brddate=" + brddate + ", noticeflag=" + noticeflag + ", lastdate="
				+ lastdate + ", brdlike=" + brdlike + ", deleteflag=" + deleteflag + ", brdhit=" + brdhit + "]";
	}

	private int brdno;
	private int bgno;
	private String brdtitle;
	private int userno;
	private String brdmemo;
	private Date brddate;
	private String noticeflag;
	private Date lastdate;
	private int brdlike;
	private String deleteflag;
	private int brdhit;

	public BoardVo() {
	}

	public BoardVo(int brdno, int bgno, String brdtitle, int userno, String brdmemo, Date brddate, String noticeflag,
			Date lastdate, int brdlike, String deleteflag, int brdhit) {
		super();
		this.brdno = brdno;
		this.bgno = bgno;
		this.brdtitle = brdtitle;
		this.userno = userno;
		this.brdmemo = brdmemo;
		this.brddate = brddate;
		this.noticeflag = noticeflag;
		this.lastdate = lastdate;
		this.brdlike = brdlike;
		this.deleteflag = deleteflag;
		this.brdhit = brdhit;
	}

	public int getBrdno() {
		return brdno;
	}

	public void setBrdno(int brdno) {
		this.brdno = brdno;
	}

	public int getBgno() {
		return bgno;
	}

	public void setBgno(int bgno) {
		this.bgno = bgno;
	}

	public String getBrdtitle() {
		return brdtitle;
	}

	public void setBrdtitle(String brdtitle) {
		this.brdtitle = brdtitle;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getBrdmemo() {
		return brdmemo;
	}

	public void setBrdmemo(String brdmemo) {
		this.brdmemo = brdmemo;
	}

	public Date getBrddate() {
		return brddate;
	}

	public void setBrddate(Date brddate) {
		this.brddate = brddate;
	}

	public String getNoticeflag() {
		return noticeflag;
	}

	public void setNoticeflag(String noticeflag) {
		this.noticeflag = noticeflag;
	}

	public Date getLastdate() {
		return lastdate;
	}

	public void setLastdate(Date lastdate) {
		this.lastdate = lastdate;
	}

	public int getBrdlike() {
		return brdlike;
	}

	public void setBrdlike(int brdlike) {
		this.brdlike = brdlike;
	}

	public String getDeleteflag() {
		return deleteflag;
	}

	public void setDeleteflag(String deleteflag) {
		this.deleteflag = deleteflag;
	}

	public int getBrdhit() {
		return brdhit;
	}

	public void setBrdhit(int brdhit) {
		this.brdhit = brdhit;
	}

}
