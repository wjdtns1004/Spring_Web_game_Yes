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
	
	//�Խ��� �� ��� ����Ʈ
	public List<BoardEntityList> selectBoard(int rownum) {
		List<BoardEntityList> res = dao.selectBoard(rownum);
		return res;
	}
	
	//�Խ��� ������ ��ȣ
	public int countPageAll() {
		int res = dao.countPageAll();
		return res;
	}
	
	//�˻�� ���� ����Ʈ ��ȸ
	public List<BoardEntityList> BoardListSearch(BoardSearchVO vo) {
		List<BoardEntityList> res = dao.BoardListSearch(vo);
		return res;
	}
	
	
	
	public void updateBoardRead(int brdno) {
		dao.updateBoardRead(brdno);		
	}
	
	
	
	/*�Խñ� �Է�*/
	public int insertBoardOne(BoardVo vo) {
		int res = dao.insertBoardOne(vo);
		return res;
	}
	
	/*�� �б�*/
	public BoardEntityList selectTextBoardOne(BoardVo vo) {
		BoardEntityList res = dao.selectTextBoardOne(vo);
		return res;
	}
	
	/*�Խñ� ���� ����*/
	public int updateBoardOne(BoardVo vo) {
		int res = dao.updateBoardOne(vo);
		return res; 
	}
	
	/*�Խñ� ���� deleteflag �� y �� ����*/
	public int deleteBoardOne(BoardVo vo) {
		int res = dao.deleteBoardOne(vo);
		return res;
	}
}
