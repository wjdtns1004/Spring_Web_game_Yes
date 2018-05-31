package yes.vo.production;

public class ConversionInsertVo {
	private int userno;
	private String resourcetype;
	private int resourceamt;
	private int protno;
	
	public ConversionInsertVo() { }

	public ConversionInsertVo(int userno, String resourcetype, int resourceamt, int protno) {
		super();
		this.userno = userno;
		this.resourcetype = resourcetype;
		this.resourceamt = resourceamt;
		this.protno = protno;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getResourcetype() {
		return resourcetype;
	}

	public void setResourcetype(String resourcetype) {
		this.resourcetype = resourcetype;
	}

	public int getResourceamt() {
		return resourceamt;
	}

	public void setResourceamt(int resourceamt) {
		this.resourceamt = resourceamt;
	}

	public int getProtno() {
		return protno;
	}

	public void setProtno(int protno) {
		this.protno = protno;
	}
	
	

}
