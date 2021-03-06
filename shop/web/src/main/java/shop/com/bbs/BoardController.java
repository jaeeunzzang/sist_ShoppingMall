package shop.com.bbs;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

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
		model.addAttribute("n_no", n_no);
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

	@RequestMapping(value = "noticeSearch.do")
	public String noticeSearchAction(String query, String data, Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("query", query);
		map.put("data", data);
		try {
			model.addAttribute("notice", dao.selectNoticeSearch(map));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "notice";
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
		model.addAttribute("reviewInfo", dao.selectReviewInfo(r_no));
		model.addAttribute("job", job);
		return "reviewWrite";
	}

	@RequestMapping(value = "reviewUpdate.do")
	public String reviewUpdateAction(ReviewBean review) {
		dao.updateReview(review);
		return "redirect:reviewList.do";
	}

	@RequestMapping(value = "reviewCommentsUpdate.do")
	public String reviewCommentsUpdateAction(int r_no, String r_comments) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("r_no", r_no);
		map.put("r_comments", r_comments);
		dao.updateReviewComments(map);
		return "redirect:reviewInfo.do?r_no=" + r_no;
	}

	@RequestMapping(value = "reviewDelete.do")
	public String reviewDeleteAction(int r_no) {
		dao.deleteReview(r_no);
		return "redirect:reviewList.do";
	}

	@RequestMapping(value = "reviewSearch.do")
	public String reviewSearchAction(String query, String data, Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("query", query);
		map.put("data", data);
		try {
			model.addAttribute("reviewList", dao.selectReviewSearch(map));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "review";
	}

	@RequestMapping(value = "qnaList.do")
	public String qnaListAction(Model model,
			@RequestParam(value = "alert", required = false, defaultValue = "public") String alert) {
		model.addAttribute("qnaList", dao.selectQna());
		model.addAttribute("alert", alert);
		return "qna";
	}

	@RequestMapping(value = "qnaInfo.do")
	public String qnaInfoAction(int q_no, int q_pnum, Model model, HttpSession session) {

		QnaBean qna = dao.selectQnaInfo(q_no);
		// System.out.println("get sessionId:" + session.getAttribute("id"));
		// System.out.println("qna m_id: " + qna.getM_id());
		model.addAttribute("qInfo", qna);

		QnaBean qnaPnum = dao.selectQnaInfo(q_pnum);
		if (qna.getSecret().equals("private")) { // 비밀글일때
			// System.out.println("private check");
			if (session.getAttribute("id") == null) {
				// System.out.println("session null");
				return "redirect:qnaList.do?alert=private";
			}
			if (qna.getM_id().equals(session.getAttribute("id"))
					|| qnaPnum.getM_id().equals(session.getAttribute("id"))) {
				// System.out.println("session, m_id equals");
				return "qnaInfo";

			} else if (session.getAttribute("id").equals("Admin")) {
				// System.out.println("session id Admin yes");
				return "qnaInfo";
			} else {
				// System.out.println(" session, id not equal ");
				return "redirect:qnaList.do?alert=private";
			}
		}
		// if (qna.getSecret().equals("private")){// secret이 private일때
		// if(!(qna.getM_id().trim().equals(session.getAttribute("id")))
		// ||!(session.getAttribute("id").equals("Admin"))) {
		// System.out.println("session Check no");
		// return "redirect:qnaList.do?alert=secret";
		// }else{// m_id가 로그인되어있는 아이디와 같거나 admin계정일때
		// System.out.println("session equals yes");
		// return "qnaInfo"; } } // if

		return "qnaInfo";
	}

	@RequestMapping(value = "qnaWrite.do")
	public String qnaWriteAction(int p_no, Model model) {
		model.addAttribute("p_no", p_no);
		model.addAttribute("state", "new");
		return "qnaWrite";
	}

	@RequestMapping(value = "qnaAdminWrite.do")
	public String qnaAdminWriteAction(int q_no, Model model) {
		model.addAttribute("state", "re");
		model.addAttribute("q_no", q_no);
		return "qnaReplyWrite";
	}

	@RequestMapping(value = "qnaInsert.do") // 새글작성시
	public String qnaInsertAction(QnaBean qna) {
		System.out.println("first qna:" + qna);
		dao.insertQna(qna);
		return "redirect:qnaList.do";
	}

	@RequestMapping(value = "qnaReplyInsert.do") // 답글작성시
	public String qnaReplyInsertAction(QnaBean qna) {
		QnaBean qnaBean = dao.selectQnaInfo(qna.getQ_pnum()); // 부모글의 정보를 받아와서 qnaBean에 저장
		qna.setP_no(qnaBean.getP_no()); // 부모글의 상품번호를 받아와서 현재글의 상품번호로 설정
		dao.insertQnaReply(qna);
		return "redirect:qnaList.do";
	}

	@RequestMapping(value = "qnaMod.do")
	public String qnaModifyAction(int q_no, String job, Model model) {
		model.addAttribute("qnaInfo", dao.selectQnaInfo(q_no));
		model.addAttribute("job", job);
		return "qnaWrite";
	}

	@RequestMapping(value = "qnaUpdate.do")
	public String qnaUpdateAction(QnaBean qna) {
		dao.updateQna(qna);
		return "redirect:qnaList.do";
	}

	@RequestMapping(value = "qnaDelete.do")
	public String qnaDeleteAction(int q_no) {
		dao.deleteQna(q_no);
		return "redirect:qnaList.do";
	}

	@RequestMapping(value = "qnaSearch.do")
	public String qnaSearchAction(String query, String data, Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("query", query);
		map.put("data", data);
		try {
			model.addAttribute("qnaList", dao.selectQnaSearch(map));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "qna";
	}
}
