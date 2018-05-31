package yes.dao.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yes.entity.board.BoardReplyEntity;
import yes.vo.board.BoardReplyVo;

@Repository
public class BoardReplyDao {
	@Autowired
	private SqlSessionFactory factory;

	// ¥Ò±€ æ≤±‚
	public int InsertBoardReply(BoardReplyVo vo) {
		int res = 0;
		SqlSession session = factory.openSession();
		try {
			res = session.insert("boardReplyMapper.insert_boardReply", vo);
			if (res > 0)
				session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}

		return res;
	}

	// ¥Ò±€ ∏ÆΩ∫∆Æ
	public List<BoardReplyEntity> SelectListBoardReply(BoardReplyVo vo) {
		List<BoardReplyEntity> res = null;
		SqlSession session = factory.openSession();
		try {
			res = session.selectList("boardReplyMapper.selectList_boardReply", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return res;
	}

	// ¥Ò±€ ªË¡¶
	public int DeleteBoardReply(BoardReplyVo vo) {
		int res = 0;
		SqlSession session = factory.openSession();
		try {
			res = session.delete("boardReplyMapper.delete_boardReply", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return res;
	}

}
