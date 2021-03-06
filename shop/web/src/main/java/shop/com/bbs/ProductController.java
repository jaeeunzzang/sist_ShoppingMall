package shop.com.bbs;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.com.dao.ProductDao;

@Controller
public class ProductController {

	@Resource(name = "productDao") // servlet-context bean id랑 이름같게.
	private ProductDao dao;

	@RequestMapping(value = "mainPage.do")
	public String mainPageProductListAction(Model model) {
		model.addAttribute("pList", dao.productList());
		return "/mainPage/mainPage";
	}

	@RequestMapping(value = "productDetail.do")
	public String productDetail(int p_no, Model model) {
		model.addAttribute("productInfo", dao.productInfo(p_no));
		model.addAttribute("p_Detail", dao.productDetail(p_no));
		return "productDetail";
	}

}
