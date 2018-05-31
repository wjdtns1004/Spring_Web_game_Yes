package yes.entity.production;

import java.util.Date;

import yes.entity.user.UserInfoEntity;

public class ProductionRank extends UserInfoEntity{
	private int money;
	private int produce;
	private int realestate;
	private int worker;
	private int level;
	
	public ProductionRank() {}

	public ProductionRank(int level,int userno, String username, String id, String password, String nickname, int indino, int guildno,
			Date signdate, int money, int produce, int realestate, int worker) {
		super(userno, username, id, password, nickname, indino, guildno, signdate);
		this.level = level;
		this.money = money;
		this.produce = produce;
		this.realestate = realestate;
		this.worker = worker;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getProduce() {
		return produce;
	}

	public void setProduce(int produce) {
		this.produce = produce;
	}

	public int getRealestate() {
		return realestate;
	}

	public void setRealestate(int realestate) {
		this.realestate = realestate;
	}

	public int getWorker() {
		return worker;
	}

	public void setWorker(int worker) {
		this.worker = worker;
	}

	@Override
	public String toString() {
		return "ProductionRank [money=" + money + ", produce=" + produce + ", realestate=" + realestate + ", worker="
				+ worker + ", level=" + level + ", toString()=" + super.toString() + "]";
	}

	
	
	
	
	
}
