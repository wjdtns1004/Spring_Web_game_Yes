package yes.vo.user;

public class IndustryInfoVo {
	
	private int indino; 		//numeric(4,0), 	Primary Key
	private String indiname; 	//varchar(20) 
	private int indtno;
	private int level;
	private String remark;
	
	public IndustryInfoVo() {
		super();
	}
	public IndustryInfoVo(int indino, String indiname, int indtno, int level, String remark) {
		super();
		this.indino = indino;
		this.indiname = indiname;
		this.indtno = indtno;
		this.level = level;
		this.remark = remark;
	}
	/** getter & setter **/
	public int getIndino() {
		return indino;
	}
	public void setIndino(int indino) {
		this.indino = indino;
	}
	public String getIndiname() {
		return indiname;
	}
	public void setIndiname(String indiname) {
		this.indiname = indiname;
	}
	public int getIndtno() {
		return indtno;
	}
	public void setIndtno(int indtno) {
		this.indtno = indtno;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
