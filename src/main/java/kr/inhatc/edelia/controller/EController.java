package kr.inhatc.edelia.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
import kr.inhatc.edelia.dao.IDao;

@Controller
public class EController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/login/login", method= {RequestMethod.GET, RequestMethod.POST})
	public String login() {
		return "login/login";
	}
	
	@RequestMapping("/index")
	public String index(Model model) {
		return "index";
	}
	
	@RequestMapping("/contact")
	public String contact(Model model) {
		return "contact";
	}
	
	@RequestMapping	("/login/signup")
	public String signup(Model model) {
		return "/login/signup";
	}
	
	@RequestMapping("/login/forgot_password")
	public String forgot_password(Model model) {
		return "/login/forgot_password";
	}
	
	@RequestMapping("/menu")
	public String menu(Model model) {
		return "/menu";
	}
	
	@RequestMapping("/coffee_menu")
	public String coffee_menu(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("coffee_menu", dao.coffee_menu());
		return "/coffee_menu";
	}
	
	@RequestMapping("/drink_tea_menu")
	public String drink_tea_menu(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("drink_tea_menu", dao.drink_tea_menu());
		return "/drink_tea_menu";
	}
	
	@RequestMapping("/dessert_menu")
	public String dessert_menu(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("dessert_menu", dao.dessert_menu());
		return "/dessert_menu";
	}
	
	@RequestMapping("/admin/a_coffee_menu")
	public String a_coffee_menu(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("a_coffee_menu", dao.a_coffee_menu());
		return "/admin/a_coffee_menu";
	}
	
	@RequestMapping("/admin/a_drink_tea_menu")
	public String a_drink_tea_menu(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("a_drink_tea_menu", dao.a_drink_tea_menu());
		return "/admin/a_drink_tea_menu";
	}
	
	@RequestMapping("/admin/a_dessert_menu")
	public String a_dessert_menu(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("a_dessert_menu", dao.a_dessert_menu());
		return "/admin/a_dessert_menu";
	}
	
	@RequestMapping("/services")
	public String services(Model model) {
		return "/services";
	}
	
	@RequestMapping("/portfolio")
	public String portfolio(Model model) {
		return "/portfolio";
	}
	
	@RequestMapping("/reg/enroll")
	public String enroll(Model model) {
		return "/reg/enroll";
	}
	
	@RequestMapping("/reg/modify")
	public String modify(HttpServletRequest request, Model model) {
		
		String mId = request.getParameter("mId");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.modify_view(mId);
		model.addAttribute("modify", dao.modify_view(mId));
		
		return "/reg/modify";
	}
	
	@RequestMapping("/purchase/purchasemenu")
	public String purchasemenu(Model model) {
		return "/purchase/purchasemenu";
	}
	
	@RequestMapping("/purchase/kakaopay")
	public String kakaopay(HttpServletRequest request, Model model) {
		
		String mName = request.getParameter("mName");
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("mName", mName);
		return "/purchase/kakaopay";
	}
	
	@RequestMapping("/purchase/kginicis")
	public String kginicis(Model model) {
		return "/purchase/kginicis";
	}
	
	@RequestMapping("/purchase/danal")
	public String danal(Model model) {
		return "/purchase/danal";
	}
	
	@RequestMapping("/per/per_page")
	public String per_page(Model model) {
		return "/per/per_page";
	}
	
	@RequestMapping("/per/admin_per_page")
	public String admin_per_page(Model model) {
		return "/per/admin_per_page";
	}
	
	@RequestMapping("/admin/con_page")
	public String con_page(Model model) {
		return "/admin/con_page";
	}
	
	@RequestMapping("/reg/enroll/active")
	public String enroll_active(HttpServletRequest request, Model model){
		
		String mName = request.getParameter("_mName");
		Integer mPrice = Integer.parseInt(request.getParameter("_mPrice"));
		String mSize = request.getParameter("_mSize");
		String mNa = request.getParameter("_mNa");
		String mFat = request.getParameter("_mFat");
		String mSugar = request.getParameter("_mSugar");
		String mPro = request.getParameter("_mPro");
		String mCa = request.getParameter("_mCa");
		String mImg = request.getParameter("_mImg");
		String mKind = request.getParameter("_mKind");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.enroll(mName, mPrice, mSize, mNa, mFat, mSugar, mPro, mCa, mImg, mKind);
		return "/menu";
	}
	
	@RequestMapping("/reg/modify/active")
	public String modify_active(HttpServletRequest request, Model model) {
		
		String mName = request.getParameter("_mName");
		Integer mPrice = Integer.parseInt(request.getParameter("_mPrice"));
		String mSize = request.getParameter("_mSize");
		String mNa = request.getParameter("_mNa");
		String mFat = request.getParameter("_mFat");
		String mSugar = request.getParameter("_mSugar");
		String mPro = request.getParameter("_mPro");
		String mCa = request.getParameter("_mCa");
		String mImg = request.getParameter("_mImg");
		String mKind = request.getParameter("_mKind");
		String mId = request.getParameter("_mId");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.modify(mName, mPrice, mSize, mNa, mFat, mSugar, mPro, mCa, mImg, mKind, mId);
		
		return "/menu";
	}
	
	@RequestMapping("/login/signup/active")
	public String signup_active(HttpServletRequest request, Model model) {
		
		String uName = request.getParameter("_name");
		String uEmail = request.getParameter("_email");
		String uHp = request.getParameter("_hp");
		String uId = request.getParameter("_id");
		String uPassword = request.getParameter("_password");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.join(uId, uPassword, uName, uHp, uEmail);
		
		return "login/login";
	}
}
