package yes.entity.production;

import java.util.Date;

import yes.entity.user.UserInfoEntity;

public class ProductionUserRank extends UserInfoEntity {

	private int moneyrank;
	private int producerank;
	private int realestaterank;
	private int workerrank;
	private int totalrank;
	
	public ProductionUserRank() {}
	
	public ProductionUserRank(int userno, String username, String id, String password, String nickname, int indino, int guildno,
			Date signdate,int moneyrank, int producerank, int realestaterank, int workerrank, int totalrank) {
		super(userno, username, id, password, nickname, indino, guildno, signdate);
		this.moneyrank = moneyrank;
		this.producerank = producerank;
		this.realestaterank = realestaterank;
		this.workerrank = workerrank;
		this.totalrank = totalrank;
	}

	public int getMoneyrank() {
		return moneyrank;
	}

	public void setMoneyrank(int moneyrank) {
		this.moneyrank = moneyrank;
	}

	public int getProducerank() {
		return producerank;
	}

	public void setProducerank(int producerank) {
		this.producerank = producerank;
	}

	public int getRealestaterank() {
		return realestaterank;
	}

	public void setRealestaterank(int realestaterank) {
		this.realestaterank = realestaterank;
	}

	public int getWorkerrank() {
		return workerrank;
	}

	public void setWorkerrank(int workerrank) {
		this.workerrank = workerrank;
	}

	public int getTotalrank() {
		return totalrank;
	}

	public void setTotalrank(int totalrank) {
		this.totalrank = totalrank;
	}

	@Override
	public String toString() {
		return "ProductionUserRank [moneyrank=" + moneyrank + ", producerank=" + producerank + ", realestaterank="
				+ realestaterank + ", workerrank=" + workerrank + ", totalrank=" + totalrank + "]"+super.toString();
	}
	
	
	
	

	
	
}
