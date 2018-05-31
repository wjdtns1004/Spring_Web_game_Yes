package yes.controller.board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yes.biz.board.BoardReplyBiz;
import yes.entity.board.BoardEntityList;
import yes.vo.board.BoardReplyVo;

@Controller
public class BoardReply {
	@Autowired
	private BoardReplyBiz biz;
	
	@RequestMapping("/InsertBoardReply.do")
	public ModelAndView InsertBoardReply(HttpServletRequest request) {
		BoardReplyVo vo  = new BoardReplyVo();
		vo.setBrdno(Integer.parseInt(request.getParameter("brdno")));
		vo.setUserno(Integer.parseInt(request.getParameter("userno")));
		vo.setRememo(request.getParameter("rememo"));
		int res= biz.InsertBoardReply(vo);
		System.out.println(vo);
		System.out.println("¼º°ø");
		ModelAndView view = new ModelAndView("/Pages/LandingPage/LandingPage.jsp", "result", res);
		return view;
	}
	
	@RequestMapping("/DeleteBoardReply.do")
	public ModelAndView DeleteBoardReply(HttpServletRequest request) {
		int reno = Integer.parseInt(request.getParameter("reno"));
		int userno = Integer.parseInt(request.getParameter("userno"));
		System.out.println(reno+" : "+userno);
		BoardReplyVo vo = new BoardReplyVo();
		vo.setReno(reno);
		vo.setUserno(userno);
		int res= biz.DeleteBoardReply(vo);
		ModelAndView view = new ModelAndView("/BoardListSelect.do", "result", res);
		return view;
	}
	
}
