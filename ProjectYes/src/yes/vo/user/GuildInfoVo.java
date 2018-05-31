package yes.vo.user;

public class GuildInfoVo {
	
	private int guildno;		//numeric(4,0),	 primary key
	private String guildname;	//varchar(50), 	 unique
	
	public GuildInfoVo() {
		super();
	}
	public GuildInfoVo(int guildno, String guildname) {
		super();
		this.guildno = guildno;
		this.guildname = guildname;
	}
	/* getter & setter */
	public int getGuildno() {
		return guildno;
	}
	public void setGuildno(int guildno) {
		this.guildno = guildno;
	}
	public String getGuildname() {
		return guildname;
	}
	public void setGuildname(String guildname) {
		this.guildname = guildname;
	}
}
