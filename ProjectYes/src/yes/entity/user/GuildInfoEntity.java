package yes.entity.user;

public class GuildInfoEntity {
	
	private int guildno;		//numeric(4,0),	 Primary Key
	private String guildname;	//varchar(50), 	 Unique
	
	public GuildInfoEntity() {
		super();
	}
	public GuildInfoEntity(int guildno, String guildname) {
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
