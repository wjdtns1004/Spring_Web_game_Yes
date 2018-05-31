package yes.controller.user;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import yes.biz.user.SignUpBiz;
import yes.vo.user.UserInfoVo;

@Controller
public class UserInsert {
	// 모델과 view를 함께 넣을 수 있음
	@Autowired
	private SignUpBiz biz;
	
	//회원가입시 회원 정보 insert (+ 직업 선택란)
	@RequestMapping(value="/UserInfoInsert.do", method=RequestMethod.POST) //LandingPage.jsp --> signUpCheck.jsp
	public ModelAndView insert(UserInfoVo vo) {
		int result = biz.UserInfoInsert(vo);
		boolean bl = false;
		try {
			if(result > 0) {
				bl = true;
			}
		}catch(NullPointerException e){
			
		}
		ModelAndView view = new ModelAndView("/MainPage.jsp", "result", bl);// 회원가입 완료 후  페이지로 이동
		
		return view;
	}
	
	//id 중복확인
	@RequestMapping(value="/CheckUserOverlap_byID.do")
	public ModelAndView CheckUserOverlap_byID(String id) {
		
		Boolean result = biz.CheckUserOverlap_byID(id);
		ModelAndView view = new ModelAndView("/idCheck.jsp","CheckUserOverlap_byID",result);
		
		return view;
	}
	
	//nicname 중복확인
	@RequestMapping(value="/CheckUserOverlap_byNICKNAME.do")
	public ModelAndView CheckUserOverlap_byNICKNAME(String nickname) {
		Boolean result = biz.CheckUserOverlap_byNICKNAME(nickname);
		ModelAndView view = new ModelAndView("/nicnameCheck.jsp","CheckUserOverlap_byNICKNAME",result);
		return view;
	}
}
