package shop.com.bbs;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shop.com.app.dto.NoticeBean;
import shop.com.dao.BoardDao;

@Controller
public class BoardController {

	@Resource(name = "boardDao") // servlet-context bean id랑 이름같게.
	private BoardDao dao;

	@RequestMapping(value = "noticeList.do")
	public String noticeAction(Model model) {
		model.addAttribute("notice", dao.selectNotice());
		return "notice";
	}

	@RequestMapping(value = "noticeInfo.do")
	public String noticeInfoAction(int n_no, Model model) {
		model.addAttribute("noticeInfo", dao.selectNoticeInfo(n_no));
		return "noticeInfo";
	}

	@RequestMapping(value = "noticeMod.do")
	public String noticeModifyAction(String job, int n_no, Model model) {
		model.addAttribute("noticeMod", dao.selectNoticeInfo(n_no));
		model.addAttribute("job", job);
		return "noticeWrite";
	}

	@RequestMapping(value = "noticeWrite.do")
	public String noticeWriteAction(String job, Model model) {
		model.addAttribute("job", job);
		return "noticeWrite";
	}

	@RequestMapping(value = "noticeUpdate.do")
	public String noticeUpdateAction(NoticeBean notice) {
		dao.updateNotice(notice);
		return "redirect:noticeList.do";
	}

	@RequestMapping(value = "noticeInsert.do")
	public String noticeInsertAction(NoticeBean notice) {
		dao.insertNotice(notice);
		return "redirect:noticeList.do";
	}

	@RequestMapping(value = "noticeDelete.do")
	public String noticeDeleteAction(int n_no) {
		dao.deleteNotice(n_no);
		return "redirect:noticeList.do";
	}
}
