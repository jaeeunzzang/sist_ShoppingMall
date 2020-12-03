package shop.com.bbs;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.com.app.dto.MemberBean;
import shop.com.dao.MemberDao;

@Controller
public class MemberController {

	@Resource(name = "memberDao")
	private MemberDao dao;

	@RequestMapping(value = "loginCheck.do")
	public String loginCheckAction(MemberBean bean, HttpSession session) {
		// System.out.println("Controller" + bean);
//		System.out.println(dao.loginCheck(bean));
		if (dao.loginCheck(bean)) {
			// System.out.println(bean.getM_id());
			session.setAttribute("id", bean.getM_id());
			return "test";
		} else
			return "SignIn2";
	}

	@RequestMapping(value = "logout.do")
	public String logoutAction(HttpSession session) {
		System.out.println(session.getAttribute("id"));
		session.invalidate();
		return "redirect:mainPage.do";
	}
}
