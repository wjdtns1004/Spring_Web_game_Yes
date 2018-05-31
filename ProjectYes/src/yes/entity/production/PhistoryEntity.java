package yes.entity.production;

import java.util.Date;

public class PhistoryEntity {
	private int hseqno;
	private int squser;
	private int userno;
	private int protno;
	private Date starttime;
	private Date endtime;
	private int getexp;
	
	public PhistoryEntity() {}

	public PhistoryEntity(int hseqno, int squser, int userno, int protno, Date starttime, Date endtime, int getexp) {
		super();
		this.hseqno = hseqno;
		this.squser = squser;
		this.userno = userno;
		this.protno = protno;
		this.starttime = starttime;
		this.endtime = endtime;
		this.getexp = getexp;
	}

	public int getHseqno() {
		return hseqno;
	}

	public void setHseqno(int hseqno) {
		this.hseqno = hseqno;
	}

	public int getSquser() {
		return squser;
	}

	public void setSquser(int squser) {
		this.squser = squser;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public int getProtno() {
		return protno;
	}

	public void setProtno(int protno) {
		this.protno = protno;
	}

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public int getGetexp() {
		return getexp;
	}

	public void setGetexp(int getexp) {
		this.getexp = getexp;
	}
	
	

}
