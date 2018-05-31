package yes.vo.user;

public class IndustryTypeVo {
	
	private int indtno; 		//numeric(4,0) ,	Primary Key
	private String indtname;	//varchar(20)
	private String remark;		//varchar(20)
	
	public IndustryTypeVo() {
		super();
	}
	public IndustryTypeVo(int indtno, String indtname, String remark) {
		super();
		this.indtno = indtno;
		this.indtname = indtname;
		this.remark = remark;
	}

	/** getter & setter **/
	public int getIndtno() {
		return indtno;
	}
	public void setIndtno(int indtno) {
		this.indtno = indtno;
	}
	public String getIndtname() {
		return indtname;
	}
	public void setIndtname(String indtname) {
		this.indtname = indtname;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
