package yes.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yes.biz.user.SignUpBiz;
import yes.entity.user.IndustryInfoEntity;

@Controller
public class IndustryInfoSelect {
	@Autowired
	private SignUpBiz biz;
	
	@RequestMapping("/IndustryInfoSelect.do")
	public ModelAndView select() {
		List<IndustryInfoEntity> list = biz.selectL1IndustryInfo();
		ModelAndView view = new ModelAndView("/join.jsp", "list", list);
		return view;
	}
}
