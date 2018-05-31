package yes.entity.production;

public class ProductionFinalWork extends ProductionTypeEntity {
	private String worktime;
	private String typegbn;

	public ProductionFinalWork() {}

	public ProductionFinalWork(String worktime, String typegbn, int protno, String protname, String protype, int protlevel, int reqtime, int reqmoney,
			int reqproduce, int reqrealestate, int reqworker, int getexp, int prodamt, String remark, int percent) {
		super(protno, protname, protype, protlevel, reqtime, reqmoney, reqproduce, reqrealestate, reqworker, getexp, prodamt, remark, percent);
		this.worktime = worktime;
		this.typegbn = typegbn;
	}

	public String getWorktime() {
		return worktime;
	}

	public void setWorktime(String worktime) {
		this.worktime = worktime;
	}

	public String getTypegbn() {
		return typegbn;
	}

	public void setTypegbn(String typegbn) {
		this.typegbn = typegbn;
	}

	@Override
	public String toString() {
		return "ProductionFinalWork [worktime=" + worktime + ", typegbn=" + typegbn + "]"+super.toString();
	}
	
	
	
}
