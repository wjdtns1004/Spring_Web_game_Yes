package yes.vo.production;


public class ProductionTypeVo {
	private int protno;  
	private String protname; 
	private String protype; 
	private int protlevel; 
	private int reqtime; 
	private int reqmoney;
	private int reqproduce;
	private int reqrealestate; 
	private int reqworker; 
	private int getexp; 
	private int prodamt;
	private String remark;
	
	
	public ProductionTypeVo() {}


	public ProductionTypeVo(int protno, String protname, String protype, int protlevel, int reqtime, int reqmoney,
			int reqproduce, int reqrealestate, int reqworker, int getexp, int prodamt, String remark) {
		super();
		this.protno = protno;
		this.protname = protname;
		this.protype = protype;
		this.protlevel = protlevel;
		this.reqtime = reqtime;
		this.reqmoney = reqmoney;
		this.reqproduce = reqproduce;
		this.reqrealestate = reqrealestate;
		this.reqworker = reqworker;
		this.getexp = getexp;
		this.prodamt = prodamt;
		this.remark = remark;
	}


	public int getProtno() {
		return protno;
	}


	public void setProtno(int protno) {
		this.protno = protno;
	}


	public String getProtname() {
		return protname;
	}


	public void setProtname(String protname) {
		this.protname = protname;
	}


	public String getProtype() {
		return protype;
	}


	public void setProtype(String protype) {
		this.protype = protype;
	}


	public int getProtlevel() {
		return protlevel;
	}


	public void setProtlevel(int protlevel) {
		this.protlevel = protlevel;
	}


	public int getReqtime() {
		return reqtime;
	}


	public void setReqtime(int reqtime) {
		this.reqtime = reqtime;
	}


	public int getReqmoney() {
		return reqmoney;
	}


	public void setReqmoney(int reqmoney) {
		this.reqmoney = reqmoney;
	}


	public int getReqproduce() {
		return reqproduce;
	}


	public void setReqproduce(int reqproduce) {
		this.reqproduce = reqproduce;
	}


	public int getReqrealestate() {
		return reqrealestate;
	}


	public void setReqrealestate(int reqrealestate) {
		this.reqrealestate = reqrealestate;
	}


	public int getReqworker() {
		return reqworker;
	}


	public void setReqworker(int reqworker) {
		this.reqworker = reqworker;
	}


	public int getGetexp() {
		return getexp;
	}


	public void setGetexp(int getexp) {
		this.getexp = getexp;
	}


	public int getProdamt() {
		return prodamt;
	}


	public void setProdamt(int prodamt) {
		this.prodamt = prodamt;
	}


	public String getRemark() {
		return remark;
	}


	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
	
}