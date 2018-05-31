package yes.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yes.biz.board.BoardBiz;
import yes.biz.board.BoardReplyBiz;
import yes.entity.board.BoardEntityList;
import yes.entity.board.BoardReplyEntity;
import yes.vo.board.BoardReplyVo;
import yes.vo.board.BoardSearchVO;
import yes.vo.board.BoardVo;

@Controller
public class BoardSelect {
	
	@Autowired
	private BoardBiz biz;

	@Autowired
	private BoardReplyBiz bizreply;
	
	@RequestMapping("/BoardListSelect.do")
	public ModelAndView BoardListSelect(HttpServletRequest request) {
		List<BoardEntityList> list=null;
		int rownum = (int) Math.ceil(biz.countPageAll()/10.0); 
		System.out.println("count : "+biz.countPageAll());
		/*System.out.println(request.getParameter("clickedNum"));*/
		if(request.getParameter("clickedNum")==null) {
			list= biz.selectBoard(1);
			/*for (BoardEntityList boardEntityList : list) {
				System.out.println(boardEntityList);
				System.out.println(request.getParameter("clickedNum"));
			}*/
		}else {
			list = biz.selectBoard(Integer.parseInt(request.getParameter("clickedNum")));
			/*for (BoardEntityList boardEntityList : list) {
				System.out.println(boardEntityList);
			}*/
		}
		
		ModelAndView view = new ModelAndView("/Pages/MainPage/bordTest.jsp", "list", list);
		view.addObject("rownum", rownum);
		return view;	
	}
	
	/*�Խñ� �Է�*/
	@RequestMapping("/InsertBoard.do")
	public ModelAndView InsertBoard(BoardVo vo) {
		/*BoardVo vo = new BoardVo();*/
		vo.setBgno(1);
		vo.setUserno(1);
		vo.setNoticeflag("N");
		System.out.println(vo);
		int num = biz.insertBoardOne(vo);
		boolean result = false;
		
		if(num>0) {
			result = true;
		}
		ModelAndView view = new ModelAndView("/BoardListSelect.do", "result" ,result);	
		return view;
	}
	
	/* �� �б� : �Խ��� �۸�� �� �ϳ� Ŭ���� Ŭ���� ���� �꼼���� �������� �̵� */
	/*��� ���� ���*/
	@RequestMapping("/SelectTextBoardOne.do")
	public ModelAndView selectTextBoardOne(HttpServletRequest request) {
		int brdno= Integer.parseInt(request.getParameter("brdno"));
		int bgno= Integer.parseInt(request.getParameter("bgno"));
		int userno= Integer.parseInt(request.getParameter("userno"));
		BoardVo vo = new BoardVo();
		vo.setBrdno(brdno);
		vo.setBgno(bgno);
		vo.setUserno(userno);		
		BoardEntityList context = biz.selectTextBoardOne(vo);
		biz.updateBoardRead(brdno);

	/*��ۺ��� ����Ʈ*//////////////////////////////////////////////////
		BoardReplyVo vo1 =new BoardReplyVo();
		vo1.setBrdno(brdno);
		List<BoardReplyEntity> replist = bizreply.SelectListBoardReply(vo1);
		ModelAndView view = new ModelAndView("/boardView/SelectTextBoardOne.jsp", "context", context);
		view.addObject("replist", replist);
		
		/*System.out.println(context);*/
		/*for (BoardReplyEntity boardReplyVo : replist) {
			System.out.println(boardReplyVo);
		}*/
		return view;
	}
	

	/*�Խñ� ���� ����*/
	@RequestMapping("/updateBoardOne.do")
	public ModelAndView updateBoardOne(BoardVo vo, @RequestParam("brdno")int brdno) {
		int res = biz.updateBoardOne(vo);
		ModelAndView view = new ModelAndView("/BoardListSelect.do");
		return view; 
	}
	
	/*�Խñ� ���� deleteflag �� y �� ����*/
	@RequestMapping("/deleteBoardOne.do")
	public ModelAndView deleteBoardOne(@RequestParam("brdno")int brdno) {
		BoardVo vo = new BoardVo();
		vo.setBrdno(brdno);
		int res = biz.deleteBoardOne(vo);
		
		ModelAndView view = new ModelAndView("boardView/deleteCheck.jsp","result",res);
		return view; 
	}
	
	@RequestMapping("/BoardListSearch.do")
	public ModelAndView BoardListSearch(HttpServletRequest request) {
		List<BoardEntityList> list=null;
		BoardSearchVO searchvo = new BoardSearchVO();
		searchvo.setSearchTypeArr(request.getParameter("searchKeyword"));
		for(String a : request.getParameterValues("searchType")) {
			if(a.equals("brdtitle"))  searchvo.setBrdtitle("brdtitle");
			if(a.equals("brdmemo"))   searchvo.setBrdmemo("brdmemo");
		}
		list = biz.BoardListSearch(searchvo);
		
		
		// �˻��� ����Ʈ ����ŭ ������ ����� ������ �ٽ� ��������.
		int rownum = (int) Math.ceil(biz.countPageAll()/10.0);		
		ModelAndView view = new ModelAndView("/boardView/boardList.jsp", "list", list);
		view.addObject("rownum", rownum);
		return view;	
	}
	
	
	
}

