package yes.entity.board;

public class BoardSearchEntity {
	private String brdtitle;
	private String brdmemo;
	private String[] searchTypeArr;
	
	public BoardSearchEntity() {
	}

	public BoardSearchEntity(String brdtitle, String brdmemo, String searchTypeArr) {
		super();
		this.brdtitle = brdtitle;
		this.brdmemo = brdmemo;
		this.searchTypeArr = searchTypeArr.split(" ");
	}

	public String getBrdtitle() {
		return brdtitle;
	}

	public void setBrdtitle(String brdtitle) {
		this.brdtitle = brdtitle;
	}

	public String getBrdmemo() {
		return brdmemo;
	}

	public void setBrdmemo(String brdmemo) {
		this.brdmemo = brdmemo;
	}

	public String[] getSearchTypeArr() {
		return searchTypeArr;
	}

	public void setSearchTypeArr(String searchTypeArr) {
		this.searchTypeArr = searchTypeArr.split(" ");
	}
	
	


}
