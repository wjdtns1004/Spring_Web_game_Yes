package yes.dao.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yes.entity.board.BoardEntityList;
import yes.vo.board.BoardSearchVO;
import yes.vo.board.BoardVo;

@Repository
public class BoardDao {
	@Autowired
	private SqlSessionFactory factory;

	public List<BoardEntityList> selectBoard(int rownum) {
		SqlSession session = factory.openSession();
		List<BoardEntityList> res = null;
		try {
			res = session.selectList("boardMapper.selectList_board", (rownum - 1) * 10);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return res;
	}

	public int countPageAll() {
		int res = 0;
		SqlSession session = factory.openSession();
		try {
			res = session.selectOne("boardMapper.countPageAll_board");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return res;
	}

	public void updateBoardRead(int brdno) {
		SqlSession session = factory.openSession();
		try {
			if(session.update("boardMapper.updateBoardRead", brdno)>0) {
				session.commit();
			}
		} catch (Exception e) {
			session.rollback();
		} finally {
			session.close();
		}
		
	}
	
	//�˻�� ���� ����Ʈ ��ȸ
	public List<BoardEntityList> BoardListSearch(BoardSearchVO vo) {
		List<BoardEntityList> res = null;
		SqlSession session = factory.openSession();
		for(String  r : vo.getSearchTypeArr()) {
			System.out.println(r);
		}
		try {
			res = session.selectList("boardMapper.selectListbySearch_board",vo );
			for(BoardEntityList r: res) {
				System.out.println(r.toString());
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		return res;
	}

	// �� ���� CRUD ����

	/*�� �б�*/
	public BoardEntityList selectTextBoardOne(BoardVo vo) {
		BoardEntityList res = null;
		SqlSession session = factory.openSession();
		try {
			res = session.selectOne("boardMapper.select_boardOne", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return res;
	}

	/*�Խñ� �Է�*/
	public int insertBoardOne(BoardVo vo) {
		int res = 0;
		SqlSession session = factory.openSession();
		try {
			res = session.insert("boardMapper.insert_boardOne", vo);
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

	/*�Խñ� ���� ����*/
	public int updateBoardOne(BoardVo vo) {
		int res = 0;
		SqlSession session = factory.openSession();
		try {
			res = session.update("boardMapper.update_boardOne", vo);
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
	
	/*�Խñ� ���� deleteflag �� y �� ����*/
	public int deleteBoardOne(BoardVo vo) {
		int res = 0;
		SqlSession session = factory.openSession();
		try {
			res = session.update("boardMapper.delete_boardOne", vo);
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
	
	
	// �� ���� CRUD ����
}
