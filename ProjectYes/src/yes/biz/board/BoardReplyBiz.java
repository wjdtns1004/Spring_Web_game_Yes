package yes.biz.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yes.dao.board.BoardReplyDao;
import yes.entity.board.BoardReplyEntity;
import yes.vo.board.BoardReplyVo;

@Service
public class BoardReplyBiz {
	@Autowired
	private BoardReplyDao dao;

	// ��� ����
	public int InsertBoardReply(BoardReplyVo vo) {
		int res = dao.InsertBoardReply(vo);
		return res;
	}

	// ��� ����Ʈ
	public List<BoardReplyEntity> SelectListBoardReply(BoardReplyVo vo) {
		List<BoardReplyEntity> res = dao.SelectListBoardReply(vo);
		return res;
	}

	// ��� ����
	public int DeleteBoardReply(BoardReplyVo vo) {
		int res = dao.DeleteBoardReply(vo);
		return res;
	}

}
