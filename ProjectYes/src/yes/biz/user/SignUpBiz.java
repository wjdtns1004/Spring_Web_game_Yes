package yes.biz.user;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yes.dao.user.IndustryInfoDao;
import yes.dao.user.UserDao;
import yes.entity.user.IndustryInfoEntity;
import yes.entity.user.UserInfoEntity;
import yes.vo.user.UserInfoVo;

@Service
public class SignUpBiz {
	@Autowired
	private UserDao userDao;

	@Autowired
	private IndustryInfoDao inudstryDao;

	//���� ���
	public List<IndustryInfoEntity> selectL1IndustryInfo() {
		List<IndustryInfoEntity> res = inudstryDao.selectL1IndustryInfo();
		return res;
	}
	
	//ȸ�� ����
	public int UserInfoInsert(UserInfoVo vo) {
		int result = userDao.UserInfoInsert(vo);
		// procedureȣ��
		if (result >0)
		userDao.CreateUserBaseInfo(userDao.CheckUserOverlap_byID(vo.getId()).getUserno());
		return result;
	}
	
	//ID �ߺ�üũ
	public boolean CheckUserOverlap_byID(String id) {
		UserInfoEntity entity = userDao.CheckUserOverlap_byID(id);
		if(entity !=null) {
			return true;
		}
		return false;
	}
	
	//�г��� ����üũ
	public boolean CheckUserOverlap_byNICKNAME(String nickname) {
		UserInfoEntity entity = userDao.CheckUserOverlap_byNICKNAME(nickname);
		if(entity !=null) {
			return true;
		}
		return false;
	}

}
