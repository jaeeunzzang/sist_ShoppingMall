package shop.com.bbs;

import java.io.File;
import java.io.FileOutputStream;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import shop.com.app.dto.NoticeBean;
import shop.com.app.dto.QnaBean;
import shop.com.app.dto.ReviewBean;
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

	@RequestMapping(value = "reviewList.do")
	public String reviewAction(Model model) {
		model.addAttribute("reviewList", dao.selectReview());
		return "review";
	}

	@RequestMapping(value = "reviewInfo.do")
	public String reviewInfoAction(int r_no, Model model) {
		model.addAttribute("reviewInfo", dao.selectReviewInfo(r_no));
		return "reviewInfo";
	}

	@RequestMapping(value = "reviewInsert.do")
	public String reviewInsertAction(ReviewBean review,
			@RequestParam(value = "file", required = false) MultipartFile file) {
		String loc = "C:\\Users\\qkrwo\\Desktop\\sist_ShoppingMall\\shop\\web\\src\\main\\webapp\\upload\\";
		FileOutputStream fos = null;
		String r_fileName = file.getOriginalFilename();
		if (r_fileName.length() > 0) {
			try {
				fos = new FileOutputStream(new File(loc + r_fileName));
				fos.write(file.getBytes());
				review.setR_fileName(file.getOriginalFilename());
			} catch (Exception e) {
				// TODO: handle exception
			} finally {
				try {
					fos.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		dao.insertReview(review);
		return "redirect:reviewList.do";
	}

	@RequestMapping(value = "reviewWrite.do")
	public String reviewWriteAction(int p_no, Model model) {
		model.addAttribute("p_no", p_no);
		return "reviewWrite";
	}

	@RequestMapping(value = "reviewMod.do")
	public String reviewModAction(int r_no, String job, Model model) {
		model.addAttribute("reviewMod", dao.selectReviewInfo(r_no));
		model.addAttribute("job", job);
		return "reviewWrite";
	}

	@RequestMapping(value = "reviewUpdate.do")
	public String reviewUpdateAction(ReviewBean review) {
		dao.updateReview(review);
		return "redirect:reviewList.do";
	}

	@RequestMapping(value = "reviewDelete.do")
	public String reviewDeleteAction(int r_no) {
		dao.deleteReview(r_no);
		return "redirect:reviewList.do";
	}

	@RequestMapping(value = "qnaList.do")
	public String qnaListAction(Model model) {
		model.addAttribute("qnaList", dao.selectQna());
		return "qna";
	}

	@RequestMapping(value = "qnaInfo.do")
	public String qnaInfoAction(int q_no) {
		dao.selectQnaInfo(q_no);
		return "qnaInfo";
	}

	@RequestMapping(value = "qnaWrite.do")
	public String qnaWriteAction(int p_no, Model model) {
		model.addAttribute("p_no", p_no);
		model.addAttribute("state", "new");
		return "qnaWrite";
	}

	@RequestMapping(value = "qnaInsert.do")
	public String qnaInsertAction(QnaBean qna) {
		dao.insertQna(qna);
		return "redirect:qnaList.do";
	}
}
