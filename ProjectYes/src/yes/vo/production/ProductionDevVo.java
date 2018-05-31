package yes.vo.production;

import yes.entity.production.ProductionTypeEntity;

public class ProductionDevVo extends ProductionTypeEntity {
	private int remainsec;
	private String status;
	private int userno;

	public ProductionDevVo() { }

	public ProductionDevVo(int protno, String protname, String protype, int protlevel, int reqtime, int reqmoney,
			int reqproduce, int reqrealestate, int reqworker, int getexp, int prodamt, String remark, int percent,
			int remainsec, String status,int userno) {
		super(protno, protname, protype, protlevel, reqtime, reqmoney, reqproduce, reqrealestate, reqworker, getexp,
				prodamt, remark, percent);
		this.remainsec = remainsec;
		this.status = status;
		this.userno = userno;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
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
