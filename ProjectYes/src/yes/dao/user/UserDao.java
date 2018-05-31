package yes.dao.user;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yes.entity.user.UserInfoEntity;
import yes.vo.user.UserInfoVo;

@Repository
public class UserDao {
	@Autowired
	private SqlSessionFactory factory;
	
	//�α���
	public HashMap<Object, Object> selectLogin(UserInfoVo vo) {
		SqlSession session = factory.openSession();
		HashMap<Object, Object> tmp = null;
		try {
			tmp = session.selectOne("userMapper.selectLogin_user_info", vo);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return tmp;
	}
	//ȸ������
	public int UserInfoInsert(UserInfoVo vo) {		
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.insert("userMapper.insert_user_info", vo);
			if (n > 0) {
				session.commit();
			}
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}
		session.close();
		return n;
	}
//	//ȸ������ (+ session)
//	public HashMap<Object, Object> UserInforInsert2(UserInfoVo vo){
//		
//		SqlSession session = factory.openSession();
//		HashMap<Object, Object> temp = null;
//		try {
//			temp = session.insert("userMapper.insert_user_info", vo);
//		}catch(Exception e) {
//			e.printStackTrace();
//		}finally {
//			session.close();
//			return temp;
//		}
//		return temp;
//	}
	
	//ID �ߺ�üũ
	public UserInfoEntity CheckUserOverlap_byID(String id) {
		SqlSession session = factory.openSession();
		UserInfoEntity entity = session.selectOne("userMapper.checkUserOverlap_byID", id);
		session.close();
		return entity;
	}
	//�г��� �ߺ�üũ
	public UserInfoEntity CheckUserOverlap_byNICKNAME(String nickname) {
		SqlSession session = factory.openSession();
		UserInfoEntity entity = session.selectOne("userMapper.checkUserOverlap_byNICKNAME", nickname);
		session.close();
		return entity;
	}
	//ȸ�� �⺻ ���� ��� ���� �Է� procedure
	public void CreateUserBaseInfo(int userid) {		
		SqlSession session = factory.openSession();
		try {
			session.selectOne("userMapper.create_user_base_info", userid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
	}
	
}
