package yes.controller.game;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yes.biz.game.ProductBiz;
import yes.entity.production.ConversionResEntity;
import yes.entity.production.ProductionDevEntity;
import yes.entity.production.ProductionFinalWork;
import yes.entity.production.ProductionRank;
import yes.entity.production.ProductionSummary;
import yes.entity.production.ProductionTypeEntity;
import yes.entity.production.ProductionUserRank;
import yes.vo.production.ConversionInsertVo;
import yes.vo.production.ProductionDevVo;

@Controller //컨트롤러 등록
public class Product {
	
	@Autowired
	private ProductBiz productbiz;

	//메인페이지
	@RequestMapping("/SelectUserSummary.do") //@RequestMapping --> URL Mapping
	public ModelAndView SelectUserSummary(HttpServletRequest request) {
		ProductionSummary list = productbiz.SelectUserSummary(1);
//		ModelAndView view = new ModelAndView("/Pages/GamePages/GameMain.jsp","list", list);
		ModelAndView view = new ModelAndView("/Pages/MainPage/MainPage.jsp", "list", list);
		
		return view;
	}
	
	///////////// 생산활동 (MainPage.jsp --> production.jsp)
	//사용자의가 마지막으로 끝낸 생산들의 결과(?)
	@RequestMapping("/SelectUserFinalstat.do")
	public ModelAndView SelectUserFinalstat(HttpServletRequest request) {
		List<ProductionTypeEntity> ProductionTypeList = productbiz.SelectUserFinalstat(1);
		List<ProductionDevEntity> ProductionDevList = productbiz.SelectUserDevstat(1);
		ModelAndView view = new ModelAndView("/Pages/GamePage/production.jsp", "ProductionTypeList", ProductionTypeList );
//		for (ProductionDevEntity productionDevEntity : ProductionDevList) {
//			System.out.println(productionDevEntity);
//		}
		view.addObject("ProductionDevList", ProductionDevList);
		return view;
	}
	
	//너 새로고침 하지마 새로고침하면 데이터 베이스에 값 많이 들어간다.//해결
	@RequestMapping("/ResourceDevActivities.do")
	public ModelAndView ResourceDevActivities(HttpServletRequest request) {
		int userno = Integer.parseInt(request.getParameter("userno"));
		int protno = Integer.parseInt(request.getParameter("protno"));
		ProductionDevVo vo = new ProductionDevVo();
		vo.setUserno(userno);
		vo.setProtno(protno);
		int res = productbiz.ResourceDevActivities(vo);
		ModelAndView view = new ModelAndView("redirect:/SelectUserFinalstat.do");
		return view;
	}
	
	///////////// 영업활동(MainPage.jsp --> sales.jsp)
	@RequestMapping("/SelectConversionRes.do")
	public ModelAndView SelectConversionRes(HttpServletRequest request) {
		//int userno = Integer.parseInt(request.getParameter("userno"));
		List<ConversionResEntity> list = productbiz.SelectConversionRes(1);
//		ModelAndView view = new ModelAndView("/Pages/GamePages/SelectConversionRes.jsp", "list",list);
		ModelAndView view = new ModelAndView("/Pages/GamePage/sales.jsp", "list", list);
		for (ConversionResEntity conversionResEntity : list) {
			System.out.println(conversionResEntity);
		}
		return view;
	}
	
	@RequestMapping("/ResourceDevInsert.do")
	public ModelAndView ResourceDevInsert(HttpServletRequest request) {
		int userno = Integer.parseInt(request.getParameter("userno"));
		int protno = Integer.parseInt(request.getParameter("protno"));
//		String resourcetype = request.getParameter("resourcetype");
		int resourceamt = Integer.parseInt(request.getParameter("resourceamt"));
		ConversionInsertVo vo = new ConversionInsertVo();
		vo.setUserno(userno);
		vo.setProtno(protno);
		vo.setResourcetype("부동산");
		vo.setResourceamt(resourceamt);
		int res = productbiz.ResourceDevInsert(vo);
		System.out.println("완전!!");
		ModelAndView view = new ModelAndView("redirect:/SelectUserFinalstat.do");
		return view;
	}
	
	///아이템 리스트
	@RequestMapping("/SelectItemList.do")
	public ModelAndView SelectItemList() {
		List<ProductionTypeEntity> list = productbiz.SelectItemList();
		/*for (ProductionTypeEntity productionRank : list) {
			System.out.println(productionRank);
		}*/
		ModelAndView view = new ModelAndView("/Pages/GamePage/shop.jsp", "list",list);
		return view;
	}
	
	@RequestMapping("/InsertItemByprotno.do")
	public ModelAndView InsertItemByprotno(HttpServletRequest request) {
		ProductionTypeEntity entity = new ProductionTypeEntity();
		entity.setUserno(Integer.parseInt(request.getParameter("userno")));
		entity.setProtno(Integer.parseInt(request.getParameter("protno")));
		String result = productbiz.InsertItemByprotno(entity);
		ModelAndView view = new ModelAndView("/Pages/GamePage/InsertItemByprotno.jsp", "result",result);
		
		System.out.println(result);
		System.out.println(entity);
		return view;
	}
	
	@RequestMapping("/SelectProductionRank.do")
	public ModelAndView SelectProductionRank(HttpServletRequest request) {
		List<ProductionRank> list = productbiz.SelectProductionRank();
		String select = (String) request.getParameter("select");
		
		try {
			System.out.println(select);
		if(select.equals("produce"))
			list.sort((p1,p2)-> -(new Integer(p1.getProduce()).compareTo(p2.getProduce())));
		else if(select.equals("realestate"))
			list.sort((p1,p2)-> -(new Integer(p1.getRealestate()).compareTo(p2.getRealestate())));
		else if(select.equals("worker"))
			list.sort((p1,p2)-> -(new Integer(p1.getWorker()).compareTo(p2.getWorker())));
		else
			list.sort((p1,p2)-> -(new Integer(p1.getMoney()).compareTo(p2.getMoney())));
		}catch (NullPointerException e) {
			list.sort((p1,p2)-> -(new Integer(p1.getMoney()).compareTo(p2.getMoney())));
		}
	
		for (ProductionRank productionRank : list) {
			System.out.println(productionRank);
		}
		ModelAndView view = new ModelAndView("/Pages/MainPage/rankTest.jsp", "list",list);
		return view;
	}
	
	@RequestMapping("/SelectMyPage.do")
	public ModelAndView SelectMyPage() {
		//최종 개발 상황
		ProductionSummary summary = productbiz.SelectUserSummary(1);
		List<ProductionTypeEntity> finalstat = productbiz.SelectUserFinalstat(1);
		//최근 개발 정보
		List<ProductionFinalWork> finalwork = productbiz.SelectUserFinalwork(1);
		//나의 랭킹
		ProductionUserRank rank = productbiz.SelectUserRank(1);
		
		ModelAndView view = new ModelAndView("/Pages/GamePage/mypage_chart.jsp", "summary",summary);
		view.addObject("finalwork", finalwork);
		view.addObject("rank", rank);
		view.addObject("finalstat", finalstat);
		
		
		for (ProductionTypeEntity productionTypeEntity : finalstat) {
			System.out.println(productionTypeEntity);
		}
		
		//productionsummary에서 받아올게 있나?
		for (ProductionFinalWork productionFinalWork : finalwork) {
			System.out.println(productionFinalWork);
		}
		
//		for (ProductionUserRank productionUserRank : rank) {
//			System.out.println(productionUserRank);
//		}
		
		
		
		System.out.println("================================");
		/*for (ProductionTypeEntity productionFinalWork : finalstat) {
			System.out.println(productionFinalWork);
		}*/
		return view;
	}
}
