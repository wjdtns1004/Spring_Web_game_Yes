package yes.entity.user;

import java.util.Date;

public class UserInfoEntity {

	private int userno;			//varchar(20),	primary key
	private String username;	
	private String id;			//varchar(20),	unique
	private String password;
	private String nickname;	//varchar(20), 	unique
	private int indino;
	private int guildno;
	private Date signdate;

	public UserInfoEntity() {
		super();
	}
	public UserInfoEntity(String username, String id, String password, String nickname, int indino, int guildno) {
		super();
		this.userno = userno;
		this.username = username;
		this.id = id;
		this.password = password;
		this.nickname = nickname;
		this.indino = indino;
		this.guildno = guildno;
	}
	public UserInfoEntity(int userno, String username, String id, String password, String nickname, int indino, int guildno,
			Date signdate) {
		super();
		this.userno = userno;
		this.username = username;
		this.id = id;
		this.password = password;
		this.nickname = nickname;
		this.indino = indino;
		this.guildno = guildno;
		this.signdate = signdate;
	}
	@Override
	public String toString() {
		return "UserInfoEntity [userno=" + userno + ", username=" + username + ", id=" + id + ", password=" + password
				+ ", nickname=" + nickname + ", indino=" + indino + ", guildno=" + guildno + ", signdate=" + signdate
				+ "]";
	}
	/** getter & setter **/
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getIndino() {
		return indino;
	}
	public void setIndino(int indino) {
		this.indino = indino;
	}
	public int getGuildno() {
		return guildno;
	}
	public void setGuildno(int guildno) {
		this.guildno = guildno;
	}
	public Date getSigndate() {
		return signdate;
	}
	public void setSigndate(Date signdate) {
		this.signdate = signdate;
	}
	
}
