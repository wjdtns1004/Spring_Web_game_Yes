package yes.vo.board;

import java.util.Date;

public class BoardFileVo {		// ÷������ Vo
	
	private int fileno; 		// ÷������ ��ȣ (PK)(sq_fileno) ***
	private int brdno;			// �Խ��� ��ȣ(FK)
	private String filename;	// ����� ���� ���
	private String realname;	// ���ϸ�
	private int filesize;		// ����ũ��
	
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
