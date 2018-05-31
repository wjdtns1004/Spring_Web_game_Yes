package yes.entity.user;

public class IndustryTypeEntity {
	
	private int indtno; 		//numeric(4,0) ,	Primary Key
	private String indtname;	//varchar(20)
	private String remark;		//varchar(500)
	
	public IndustryTypeEntity() {
		super();
	}
	public IndustryTypeEntity(int indtno, String indtname, String remark) {
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
