package shop.com.bbs;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.com.dao.BoardDao;

@Controller
public class BoardController {

	@Resource(name = "boardDao") // servlet-context bean id랑 이름같게.
	private BoardDao dao;

	@RequestMapping(value = "notice.do")
	public String noticeAction(Model model) {
		model.addAttribute("notice", dao.selectNotice());
		return "notice";
	}

	@RequestMapping(value = "noticeInfo.do")
	public String noticeInfoAction(int n_no, Model model) {
		model.addAttribute("noticeInfo", dao.selectNoticeInfo(n_no));
		return "noticeInfo";
	}
}
