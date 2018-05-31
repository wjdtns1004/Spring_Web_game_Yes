package yes.entity.production;

import java.security.Timestamp;
import java.util.Date;

public class ConversionResEntity extends ProductionTypeEntity{
	private int userno;
	private int trueproduce;  
	private int truerealestate;
	private int trueworker;
	private String conversionyn;
	private Timestamp conreqtime;
	private int convproduce;
	private int convrealestate;
	private int conworker;
	
	public ConversionResEntity() { }

	public ConversionResEntity(int userno, int trueproduce, int truerealestate, int trueworker, String conversionyn,
			Timestamp conreqtime, int convproduce, int convrealestate, int conworker,int protno, String protname, String protype, int protlevel, int reqtime, int reqmoney,
			int reqproduce, int reqrealestate, int reqworker, int getexp, int prodamt, String remark, int percent) {
		super(protno, protname, protype, protlevel, reqtime, reqmoney, reqproduce, reqrealestate, reqworker, getexp, prodamt, remark, percent);
		this.userno = userno;
		this.trueproduce = trueproduce;
		this.truerealestate = truerealestate;
		this.trueworker = trueworker;
		this.conversionyn = conversionyn;
		this.conreqtime = conreqtime;
		this.convproduce = convproduce;
		this.convrealestate = convrealestate;
		this.conworker = conworker;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public int getTrueproduce() {
		return trueproduce;
	}

	public void setTrueproduce(int trueproduce) {
		this.trueproduce = trueproduce;
	}

	public int getTruerealestate() {
		return truerealestate;
	}

	public void setTruerealestate(int truerealestate) {
		this.truerealestate = truerealestate;
	}

	public int getTrueworker() {
		return trueworker;
	}

	public void setTrueworker(int trueworker) {
		this.trueworker = trueworker;
	}

	public String getConversionyn() {
		return conversionyn;
	}

	public void setConversionyn(String conversionyn) {
		this.conversionyn = conversionyn;
	}

	public Timestamp getConreqtime() {
		return conreqtime;
	}

	public void setConreqtime(Timestamp conreqtime) {
		this.conreqtime = conreqtime;
	}

	public int getConvproduce() {
		return convproduce;
	}

	public void setConvproduce(int convproduce) {
		this.convproduce = convproduce;
	}

	public int getConvrealestate() {
		return convrealestate;
	}

	public void setConvrealestate(int convrealestate) {
		this.convrealestate = convrealestate;
	}

	public int getConworker() {
		return conworker;
	}

	public void setConworker(int conworker) {
		this.conworker = conworker;
	}

	@Override
	public String toString() {
		return "ConversionRes [userno=" + userno + ", trueproduce=" + trueproduce + ", truerealestate=" + truerealestate
				+ ", trueworker=" + trueworker + ", conversionyn=" + conversionyn + ", conreqtime=" + conreqtime
				+ ", convproduce=" + convproduce + ", convrealestate=" + convrealestate + ", conworker=" + conworker
				+ "]" + super.toString();
	}
	

	
	
}
