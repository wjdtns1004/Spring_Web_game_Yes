package yes.biz.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yes.dao.board.BoardDao;
import yes.entity.board.BoardEntityList;
import yes.vo.board.BoardSearchVO;
import yes.vo.board.BoardVo;

@Service
public class BoardBiz {
	@Autowired
	private BoardDao dao;
	
	//게시판 글 목록 리스트
	public List<BoardEntityList> selectBoard(int rownum) {
		List<BoardEntityList> res = dao.selectBoard(rownum);
		return res;
	}
	
	//게시판 페이지 번호
	public int countPageAll() {
		int res = dao.countPageAll();
		return res;
	}
	
	//검색어를 통한 리스트 조회
	public List<BoardEntityList> BoardListSearch(BoardSearchVO vo) {
		List<BoardEntityList> res = dao.BoardListSearch(vo);
		return res;
	}
	
	
	
	public void updateBoardRead(int brdno) {
		dao.updateBoardRead(brdno);		
	}
	
	
	
	/*게시글 입력*/
	public int insertBoardOne(BoardVo vo) {
		int res = dao.insertBoardOne(vo);
		return res;
	}
	
	/*글 읽기*/
	public BoardEntityList selectTextBoardOne(BoardVo vo) {
		BoardEntityList res = dao.selectTextBoardOne(vo);
		return res;
	}
	
	/*게시글 정보 수정*/
	public int updateBoardOne(BoardVo vo) {
		int res = dao.updateBoardOne(vo);
		return res; 
	}
	
	/*게시글 삭제 deleteflag 를 y 로 변경*/
	public int deleteBoardOne(BoardVo vo) {
		int res = dao.deleteBoardOne(vo);
		return res;
	}
}
