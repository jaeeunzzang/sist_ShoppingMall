package shop.com.bbs;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.com.app.dto.MemberBean;
import shop.com.dao.MemberDao;

@Controller
public class MemberController {

	@Resource(name="memberDao")
	private MemberDao dao;
	
	@RequestMapping(value="loginCheck.do")
	public String loginCheckAction(MemberBean bean) {
		System.out.println("Controller"+bean);
//		System.out.println(dao.loginCheck(bean));
			if(dao.loginCheck(bean)) {
				return "test";
			}else return "SignIn2";
	}
}
