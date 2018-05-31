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
	
	//검색어를 통한 리스트 조회
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

	// 글 내용 CRUD 시작

	/*글 읽기*/
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

	/*게시글 입력*/
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

	/*게시글 정보 수정*/
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
	
	/*게시글 삭제 deleteflag 를 y 로 변경*/
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
	
	
	// 글 내용 CRUD 종료
}
