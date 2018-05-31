package yes.biz.user;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yes.dao.user.UserDao;
import yes.vo.user.UserInfoVo;

@Service
public class LoginBiz {	
	@Autowired
	private UserDao userDao;
	
	public HashMap<Object, Object> selectLogin(UserInfoVo vo) {
		HashMap<Object, Object> temp = userDao.selectLogin(vo);
		return temp;
	}
}
