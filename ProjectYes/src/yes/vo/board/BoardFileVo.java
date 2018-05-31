package yes.vo.board;

import java.util.Date;

public class BoardFileVo {		// 첨부파일 Vo
	
	private int fileno; 		// 첨부파일 번호 (PK)(sq_fileno) ***
	private int brdno;			// 게시판 번호(FK)
	private String filename;	// 저장소 파일 경로
	private String realname;	// 파일명
	private int filesize;		// 파일크기
	
	public BoardFileVo() {
		super();
	}
	public BoardFileVo(int fileno, int brdno, String filename, String realname, int filesize) {
		super();
		this.fileno = fileno;
		this.brdno = brdno;
		this.filename = filename;
		this.realname = realname;
		this.filesize = filesize;
	}
	
	/** getter & setter **/
	public int getFileno() {
		return fileno;
	}
	public void setFileno(int fileno) {
		this.fileno = fileno;
	}
	public int getBrdno() {
		return brdno;
	}
	public void setBrdno(int brdno) {
		this.brdno = brdno;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public int getFilesize() {
		return filesize;
	}
	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}
}
