package yes.biz.game;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yes.dao.game.ProductDao;
import yes.entity.production.ConversionResEntity;
import yes.entity.production.ProductionDevEntity;
import yes.entity.production.ProductionFinalWork;
import yes.entity.production.ProductionRank;
import yes.entity.production.ProductionSummary;
import yes.entity.production.ProductionTypeEntity;
import yes.entity.production.ProductionUserRank;
import yes.vo.production.ConversionInsertVo;
import yes.vo.production.ProductionDevVo;

@Service
public class ProductBiz {
	@Autowired
	private ProductDao productDao;

	public ProductionSummary SelectUserSummary(int userno) {
		ProductionSummary res = productDao.SelectUserSummary(userno);
		return res;
	}

	public List<ProductionTypeEntity> SelectUserFinalstat(int userno) {
		List<ProductionTypeEntity> res = productDao.SelectUserFinalstat(userno);
		return res;
	}

	public List<ProductionDevEntity> SelectUserDevstat(int userno) {
		List<ProductionDevEntity> res = productDao.SelectUserDevstat(userno);
		return res;
	}

	public int ResourceDevActivities(ProductionDevVo vo) {
		int res = productDao.ResourceDevActivities(vo);
		return res;
	}

	public List<ConversionResEntity> SelectConversionRes(int userno) {
		List<ConversionResEntity> res = productDao.SelectConversionRes(userno);
		return res;
	}

	// 사용자번호, 자원종류, 자원량(입력받기) , 개발 코드를 넣어서 개발등록을 하는 루틴
	public int ResourceDevInsert(ConversionInsertVo vo) {
		int res = productDao.ResourceDevInsert(vo);
		return res;
	}

	public List<ProductionTypeEntity> SelectItemList() {
		List<ProductionTypeEntity> res = productDao.SelectItemList();
		return res;
	}

	public String InsertItemByprotno(ProductionTypeEntity entity) {
		String res = productDao.InsertItemByprotno(entity);
		return res;
	}

	public List<ProductionRank> SelectProductionRank() {
		List<ProductionRank> res = productDao.SelectProductionRank();
		return res;
	}

	///////////// 마이페이지 최근에 한일
	public List<ProductionFinalWork> SelectUserFinalwork(int userno) {
		List<ProductionFinalWork> res = productDao.SelectUserFinalwork(userno);
		return res;
	}

	public ProductionUserRank SelectUserRank(int userno) {
		ProductionUserRank res = productDao.SelectUserRank(userno);
		return res;
	}

}
