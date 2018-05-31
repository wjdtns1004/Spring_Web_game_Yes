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

	// �׺���̼� �ٿ� �ö󰥰͵�
	public ProductionSummary SelectUserSummary(int userno) {
		SqlSession session = factory.openSession();
		ProductionSummary entity = session.selectOne("gproductionMapper.select_user_summary", userno);
		session.close();
		return entity;
	}

	// ���������� ���� ������Ȳ
	public List<ProductionTypeEntity> SelectUserFinalstat(int userno) {
		SqlSession session = factory.openSession();
		List<ProductionTypeEntity> res = session.selectList("gproductionMapper.select_user_finalstat", userno);
		session.close();
		return res;
	}

	// ������ �����ϸ� ���� �� �ִ� �͵�& �ҿ� �ð� ���
	public List<ProductionDevEntity> SelectUserDevstat(int userno) {
		SqlSession session = factory.openSession();
		List<ProductionDevEntity> res = session.selectList("gproductionMapper.select_user_Devstat", userno);
		session.close();
		return res;
	}

	// �����ϱ� ��ư ������ ���� ��� ���깰�� �����ͺ��̽��� �ֱ�
	public int ResourceDevActivities(ProductionDevVo vo) {
		SqlSession session = factory.openSession();
		int res = session.selectOne("gproductionMapper.resource_dev_activities", vo);
		session.close();
		return res;
	}

	// ������� ��ȣ�� �Է��ؼ� ��ȯ�� ������ �ڿ� ���� Ȯ���ϴ� ��ƾ
	public List<ConversionResEntity> SelectConversionRes(int userno) {
		SqlSession session = factory.openSession();
		List<ConversionResEntity> res = session.selectList("gproductionMapper.select_conversion_res", userno);
		session.close();
		return res;
	}
	
	//����ڹ�ȣ, �ڿ�����, �ڿ���(�Է¹ޱ�) , ���� �ڵ带 �־ ���ߵ���� �ϴ� ��ƾ 
	public int ResourceDevInsert(ConversionInsertVo vo) {
		SqlSession session = factory.openSession();
		int res = session.selectOne("gproductionMapper.resource_dev_insert", vo);
		session.close();
		return res;
	}

	// ������ ����Ʈ �����ֱ�
	public List<ProductionTypeEntity> SelectItemList() {
		SqlSession session = factory.openSession();
		List<ProductionTypeEntity> res = session.selectList("gproductionMapper.select_item_list");
		session.close();
		return res;
	}

	// ������ ���� �� ����
	public String InsertItemByprotno(ProductionTypeEntity entity) {
		SqlSession session = factory.openSession();
		String res = session.selectOne("gproductionMapper.insert_item_byprotno", entity);
		session.close();
		return res;
	}

	// ��ŷ ��ȸ
	public List<ProductionRank> SelectProductionRank() {
		SqlSession session = factory.openSession();
		List<ProductionRank> res = session.selectList("gproductionMapper.select_production_rank");
		session.close();
		return res;
	}
	/////////////���������� �ֱٿ� ����
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
