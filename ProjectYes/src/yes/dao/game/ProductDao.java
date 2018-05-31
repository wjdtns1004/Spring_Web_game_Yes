package yes.dao.game;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yes.entity.production.ConversionResEntity;
import yes.entity.production.ProductionDevEntity;
import yes.entity.production.ProductionFinalWork;
import yes.entity.production.ProductionRank;
import yes.entity.production.ProductionSummary;
import yes.entity.production.ProductionTypeEntity;
import yes.entity.production.ProductionUserRank;
import yes.vo.production.ConversionInsertVo;
import yes.vo.production.ProductionDevVo;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionFactory factory;

	// 네비게이션 바에 올라갈것들
	public ProductionSummary SelectUserSummary(int userno) {
		SqlSession session = factory.openSession();
		ProductionSummary entity = session.selectOne("gproductionMapper.select_user_summary", userno);
		session.close();
		return entity;
	}

	// 마지막으로 끝낸 개발현황
	public List<ProductionTypeEntity> SelectUserFinalstat(int userno) {
		SqlSession session = factory.openSession();
		List<ProductionTypeEntity> res = session.selectList("gproductionMapper.select_user_finalstat", userno);
		session.close();
		return res;
	}

	// 다음에 개발하면 얻을 수 있는 것들& 소요 시간 등등
	public List<ProductionDevEntity> SelectUserDevstat(int userno) {
		SqlSession session = factory.openSession();
		List<ProductionDevEntity> res = session.selectList("gproductionMapper.select_user_Devstat", userno);
		session.close();
		return res;
	}

	// 개발하기 버튼 누르고 나서 얻는 생산물들 데이터베이스에 넣기
	public int ResourceDevActivities(ProductionDevVo vo) {
		SqlSession session = factory.openSession();
		int res = session.selectOne("gproductionMapper.resource_dev_activities", vo);
		session.close();
		return res;
	}

	// 사용자의 번호를 입력해서 전환이 가능한 자원 양을 확인하는 루틴
	public List<ConversionResEntity> SelectConversionRes(int userno) {
		SqlSession session = factory.openSession();
		List<ConversionResEntity> res = session.selectList("gproductionMapper.select_conversion_res", userno);
		session.close();
		return res;
	}
	
	//사용자번호, 자원종류, 자원량(입력받기) , 개발 코드를 넣어서 개발등록을 하는 루틴 
	public int ResourceDevInsert(ConversionInsertVo vo) {
		SqlSession session = factory.openSession();
		int res = session.selectOne("gproductionMapper.resource_dev_insert", vo);
		session.close();
		return res;
	}

	// 아이템 리스트 보여주기
	public List<ProductionTypeEntity> SelectItemList() {
		SqlSession session = factory.openSession();
		List<ProductionTypeEntity> res = session.selectList("gproductionMapper.select_item_list");
		session.close();
		return res;
	}

	// 아이템 구매 및 착용
	public String InsertItemByprotno(ProductionTypeEntity entity) {
		SqlSession session = factory.openSession();
		String res = session.selectOne("gproductionMapper.insert_item_byprotno", entity);
		session.close();
		return res;
	}

	// 랭킹 조회
	public List<ProductionRank> SelectProductionRank() {
		SqlSession session = factory.openSession();
		List<ProductionRank> res = session.selectList("gproductionMapper.select_production_rank");
		session.close();
		return res;
	}
	/////////////마이페이지 최근에 한일
	public List<ProductionFinalWork> SelectUserFinalwork(int userno) {
		SqlSession session = factory.openSession();
		List<ProductionFinalWork> res = session.selectList("gproductionMapper.select_user_finalwork",userno);
		session.close();
		return res;
	}
	
	public ProductionUserRank SelectUserRank(int userno) {
		SqlSession session = factory.openSession();
		ProductionUserRank res = session.selectOne("gproductionMapper.select_user_rank",userno);
		session.close();
		return res;
	}


}
