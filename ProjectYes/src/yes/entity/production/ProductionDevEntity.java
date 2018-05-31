package yes.entity.production;

public class ProductionDevEntity extends ProductionTypeEntity {
	private int remainsec;
	private String status;

	public ProductionDevEntity() { }

	public ProductionDevEntity(int protno, String protname, String protype, int protlevel, int reqtime, int reqmoney,
			int reqproduce, int reqrealestate, int reqworker, int getexp, int prodamt, String remark, int percent,
			int remainsec, String status) {
		super(protno, protname, protype, protlevel, reqtime, reqmoney, reqproduce, reqrealestate, reqworker, getexp,
				prodamt, remark, percent);
		this.remainsec = remainsec;
		this.status = status;
	}

	@Override
	public String toString() {
		return "ProductionDevEntity [remainsec=" + remainsec + ", status=" + status + "]";
	}

	public int getRemainsec() {
		return remainsec;
	}

	public void setRemainsec(int remainsec) {
		this.remainsec = remainsec;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
