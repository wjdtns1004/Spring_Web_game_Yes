package yes.entity.board;

import java.util.Date;

public class BoardEntityList extends BoardEntity {
	
	private int userno;
	private String username;
	private String nickname;

	public BoardEntityList() {
		super();
	}

	public BoardEntityList(int brdno, int bgno, String brdtitle, int userno, String brdmemo, Date brddate,
			String noticeflag, Date lastdate, int brdlike, String deleteflag, int brdhit, String username,String nickname) {
		super( brdno,  bgno,  brdtitle,  userno,  brdmemo,  brddate,
				 noticeflag,  lastdate,  brdlike,  deleteflag,  brdhit);
		this.userno = userno;
		this.username = username;
		this.nickname = nickname;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

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

	@Override
	public String toString() {
		return "BoardEntityList [userno=" + userno + ", username=" + username + ", nickname=" + nickname
				+ ", toString()=" + super.toString() + "]";
	}

	
	
	
}
