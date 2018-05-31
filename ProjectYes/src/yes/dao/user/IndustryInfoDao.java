package yes.dao.user;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import yes.entity.user.IndustryInfoEntity;
import yes.vo.user.IndustryInfoVo;

@Repository
public class IndustryInfoDao {
	@Autowired
	private SqlSessionFactory factory;

	public List<IndustryInfoEntity> selectL1IndustryInfo() {
		IndustryInfoVo io = new IndustryInfoVo();
		io.setLevel(1);
		List<IndustryInfoEntity> res = null;
		SqlSession session = factory.openSession();
		try {
			res = session.selectList("indiMapper.selectL1_industry_info",io);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return res;
	}


}
