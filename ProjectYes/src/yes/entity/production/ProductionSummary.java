package yes.entity.production;

public class ProductionSummary {
	private int userno;
	private int inmoney;     
	private int inproduce;   
	private int inrealestate;
	private int inworker; 
	private int outmoney;     
	private int outproduce;   
	private int outrealestate;
	private int outworker; 
	private String job;
	private int level;
	
	public ProductionSummary() {}

	public ProductionSummary(int userno, int inmoney, int inproduce, int inrealestate, int inworker, int outmoney,
			int outproduce, int outrealestate, int outworker, String job, int level) {
		super();
		this.userno = userno;
		this.inmoney = inmoney;
		this.inproduce = inproduce;
		this.inrealestate = inrealestate;
		this.inworker = inworker;
		this.outmoney = outmoney;
		this.outproduce = outproduce;
		this.outrealestate = outrealestate;
		this.outworker = outworker;
		this.job = job;
		this.level = level;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public int getInmoney() {
		return inmoney;
	}

	public void setInmoney(int inmoney) {
		this.inmoney = inmoney;
	}

	public int getInproduce() {
		return inproduce;
	}

	public void setInproduce(int inproduce) {
		this.inproduce = inproduce;
	}

	public int getInrealestate() {
		return inrealestate;
	}

	public void setInrealestate(int inrealestate) {
		this.inrealestate = inrealestate;
	}

	public int getInworker() {
		return inworker;
	}

	public void setInworker(int inworker) {
		this.inworker = inworker;
	}

	public int getOutmoney() {
		return outmoney;
	}

	public void setOutmoney(int outmoney) {
		this.outmoney = outmoney;
	}

	public int getOutproduce() {
		return outproduce;
	}

	public void setOutproduce(int outproduce) {
		this.outproduce = outproduce;
	}

	public int getOutrealestate() {
		return outrealestate;
	}

	public void setOutrealestate(int outrealestate) {
		this.outrealestate = outrealestate;
	}

	public int getOutworker() {
		return outworker;
	}

	public void setOutworker(int outworker) {
		this.outworker = outworker;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	@Override
	public String toString() {
		return "ProductionSummary [userno=" + userno + ", inmoney=" + inmoney + ", inproduce=" + inproduce
				+ ", inrealestate=" + inrealestate + ", inworker=" + inworker + ", outmoney=" + outmoney
				+ ", outproduce=" + outproduce + ", outrealestate=" + outrealestate + ", outworker=" + outworker
				+ ", job=" + job + ", level=" + level + "]";
	}
	
	
	
	
}
