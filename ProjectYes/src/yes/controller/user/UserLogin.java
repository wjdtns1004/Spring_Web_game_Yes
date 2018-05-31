package yes.controller.user;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yes.biz.user.LoginBiz;
import yes.vo.user.UserInfoVo;

@Controller
public class UserLogin {

	@Autowired
	private LoginBiz biz;

	// 로그인
	@RequestMapping(value = "/UserInfoSelect.do") // LandingPage.jsp --> MainPage.jsp
	public ModelAndView select(UserInfoVo vo, HttpServletRequest request) {
		HashMap<Object, Object> hash = biz.selectLogin(vo);
		String nickname = null;
		HttpSession session = request.getSession();
		try {
			Long count = (Long) hash.get("count");
			if (count == 1) {
				nickname = (String) hash.get("nickname");
				session.setAttribute("userno", vo.getId());
				session.setAttribute("nickname", nickname);
			}
		} catch (NullPointerException e) {
		}
		ModelAndView view = new ModelAndView("redirect:/SelectUserSummary.do");
		return view;
	}

	// 로그아웃
	@RequestMapping(value = "/Logout.do") // LandingPage.jsp --> MainPage.jsp
	public ModelAndView Logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		ModelAndView view = new ModelAndView("redirect:/Pages/LandingPage/LandingPage.jsp");
		return view;
	}
}
