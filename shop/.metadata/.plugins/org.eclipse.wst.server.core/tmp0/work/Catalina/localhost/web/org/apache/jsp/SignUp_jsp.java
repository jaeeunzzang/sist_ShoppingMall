/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.57
 * Generated at: 2020-11-20 09:35:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SignUp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1605232503631L));
    _jspx_dependants.put("jar:file:/C:/Users/qkrwo/Desktop/sist/팀프로젝트_쇼핑몰/shop/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/web/WEB-INF/lib/jstl-1.2.jar!/META-INF/c-1_0-rt.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("jar:file:/C:/Users/qkrwo/Desktop/sist/팀프로젝트_쇼핑몰/shop/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/web/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link href=\"/web/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"/web/css/kfonts2.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"/web/css/maincss.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("body {\r\n");
      out.write("\tfont-family: 'Lato', sans-serif;\r\n");
      out.write("\tbackground-color: #f8f8f8;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"/web/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.5.1.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(function() {\r\n");
      out.write("\r\n");
      out.write("\t});\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("<body id=\"singUp\">\r\n");
      out.write("\t<div class=\"wrap\">\r\n");
      out.write("\t\t<div class=\"mainWrap\">\r\n");
      out.write("\t\t\t<section class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<h2>Create Account</h2>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<form action=\"\">\r\n");
      out.write("\t\t\t\t\t<h3>기본정보</h3>\r\n");
      out.write("\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t<img src=\"//img.echosting.cafe24.com/skin/base/common/ico_required.gif\" alt=\"필수\">\r\n");
      out.write("\t\t\t\t\t\t필수입력사항\r\n");
      out.write("\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t<table class=\"table\">\r\n");
      out.write("\t\t\t\t\t\t\t<colgroup>\r\n");
      out.write("\t\t\t\t\t\t\t\t<col style=\"width: 150px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<col style=\"width: auto;\">\r\n");
      out.write("\t\t\t\t\t\t\t</colgroup>\r\n");
      out.write("\t\t\t\t\t\t\t<tbody>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th scope=\"row\">아이디 <img class=\"reqImg\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tsrc=\"//img.echosting.cafe24.com/skin/base/common/ico_required.gif\" alt=\"필수\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><input id=\"member_id\" name=\"member_id\" class=\"inputTypeText\" placeholder=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvalue=\"\" type=\"text\"> (영문소문자/숫자, 4~16자)</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th scope=\"row\">비밀번호 <img class=\"reqImg\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tsrc=\"//img.echosting.cafe24.com/skin/base/common/ico_required.gif\" alt=\"필수\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><input id=\"member_id\" name=\"member_pw\" class=\"inputTypeText\" placeholder=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvalue=\"\" type=\"text\"> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th scope=\"row\">비밀번호확인 <img class=\"reqImg\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tsrc=\"//img.echosting.cafe24.com/skin/base/common/ico_required.gif\" alt=\"필수\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><input id=\"member_id\" name=\"member_pw_confirm\" class=\"inputTypeText\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tplaceholder=\"\" value=\"\" type=\"text\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th scope=\"row\">주소</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><input id=\"postcode1\" name=\"postcode1\" class=\"\" placeholder=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\treadonly=\"readonly\" maxlength=\"14\" value=\"\" type=\"text\"> <a href=\"#none\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tonclick=\"\" id=\"postBtn\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img src=\"//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_zipcode.gif\" alt=\"우편번호\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</a> <br> <input id=\"addr1\" name=\"addr1\" class=\"\" placeholder=\"\" readonly=\"readonly\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvalue=\"\" type=\"text\"> 기본주소 <br> <input id=\"addr2\" name=\"addr2\" class=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tplaceholder=\"\" value=\"\" type=\"text\"> 나머지주소(선택입력가능)</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr class=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th scope=\"row\">일반전화 <img class=\"reqImg\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tsrc=\"//img.echosting.cafe24.com/skin/base/common/ico_required.gif\" class=\"displaynone\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\talt=\"필수\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><select id=\"phone1\" name=\"phone[]\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"02\">02</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"031\">031</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"032\">032</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"033\">033</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"041\">041</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"042\">042</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"043\">043</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"044\">044</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"051\">051</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"052\">052</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"053\">053</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"054\">054</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"055\">055</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"061\">061</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"062\">062</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"063\">063</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"064\">064</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"070\">070</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select> - <input id=\"phone2\" name=\"phone[]\" maxlength=\"4\" value=\"\" type=\"text\" class=\"tel\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t- <input id=\"phone3\" name=\"phone[]\" maxlength=\"4\" value=\"\" type=\"text\" class=\"tel\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr class=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th scope=\"row\">휴대전화 <img class=\"reqImg\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tsrc=\"//img.echosting.cafe24.com/skin/base/common/ico_required.gif\" class=\"\" alt=\"필수\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><select id=\"mobile1\" name=\"mobile[]\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"010\">010</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"011\">011</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"016\">016</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"017\">017</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"018\">018</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"019\">019</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select> - <input id=\"mobile2\" name=\"mobile[]\" maxlength=\"4\" value=\"\" type=\"text\" class=\"tel\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t- <input id=\"mobile3\" name=\"mobile[]\" maxlength=\"4\" value=\"\" type=\"text\" class=\"tel\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th scope=\"row\">이메일 <img class=\"reqImg\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tsrc=\"//img.echosting.cafe24.com/skin/base/common/ico_required.gif\" alt=\"필수\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><input id=\"email1\" name=\"email1\" value=\"\" type=\"text\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<h3>추가정보</h3>\r\n");
      out.write("\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t<table class=\"table\">\r\n");
      out.write("\t\t\t\t\t\t\t<colgroup>\r\n");
      out.write("\t\t\t\t\t\t\t\t<col style=\"width: 150px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<col style=\"width: auto;\">\r\n");
      out.write("\t\t\t\t\t\t\t</colgroup>\r\n");
      out.write("\t\t\t\t\t\t\t<tbody>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr class=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th scope=\"row\">생년월일 <img class=\"reqImg\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tsrc=\"//img.echosting.cafe24.com/skin/base/common/ico_required.gif\" class=\"displaynone\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\talt=\"필수\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><input id=\"birth_year\" name=\"birth_year\" class=\"tel\" maxlength=\"4\" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\ttype=\"text\"> 년 <input id=\"birth_month\" name=\"birth_month\" class=\"tel\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tmaxlength=\"2\" value=\"\" type=\"text\"> 월 <input id=\"birth_day\" name=\"birth_day\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tclass=\"tel\" maxlength=\"2\" value=\"\" type=\"text\"> 일</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<h3>이용약관</h3>\r\n");
      out.write("\t\t\t\t\t<div class=\"\">\r\n");
      out.write("\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t<span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"checkbox\" id=\"sAgreeAllChecked\"> <label for=\"sAgreeAllChecked\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<strong>이용약관 및 개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다.</strong>\r\n");
      out.write("\t\t\t\t\t\t\t\t</label>\r\n");
      out.write("\t\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<h4>[필수]이용약관동의</h4>\r\n");
      out.write("\t\t\t\t\t\t<div style=\"overflow: scroll; width: 970px; height: 200px;\">\r\n");
      out.write("\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<font face=\"\">제1조(목적) <br> 이 약관은 라룸 회사(전자상거래 사업자)가 운영하는 라룸 사이버 몰(이하 “몰”이라 한다)에서\r\n");
      out.write("\t\t\t\t\t\t\t\t\t제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다. <br>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」\r\n");
      out.write("\t\t\t\t\t\t\t\t</font>\r\n");
      out.write("\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<font face=\"\"> 제2조(정의) <br> ① “몰”이란 라룸회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기\r\n");
      out.write("\t\t\t\t\t\t\t\t\t위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다. <br>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다. <br> ③ ‘회원’이라 함은 “몰”에\r\n");
      out.write("\t\t\t\t\t\t\t\t\t(삭제) 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다. <br> ④ ‘비회원’이라 함은 회원에 가입하지\r\n");
      out.write("\t\t\t\t\t\t\t\t\t않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.\r\n");
      out.write("\t\t\t\t\t\t\t\t</font>\r\n");
      out.write("\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<font face=\"Tahoma\"> 제3조 (약관 등의 명시와 설명 및 개정) <br>① “몰”은 이 약관의 내용과 상호 및 대표자 성명,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 라룸 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수\r\n");
      out.write("\t\t\t\t\t\t\t\t\t있도록 할 수 있습니다. <br>② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한\r\n");
      out.write("\t\t\t\t\t\t\t\t\t내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다. <br>③ “몰”은 「전자상거래 등에서의\r\n");
      out.write("\t\t\t\t\t\t\t\t\t소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호\r\n");
      out.write("\t\t\t\t\t\t\t\t\t등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. <br>④\r\n");
      out.write("\t\t\t\t\t\t\t\t\t“몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 \"몰“은 개정 전 내용과 개정 후 내용을 명확하게\r\n");
      out.write("\t\t\t\t\t\t\t\t\t비교하여 이용자가 알기 쉽도록 표시합니다. <br>⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그\r\n");
      out.write("\t\t\t\t\t\t\t\t\t이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에\r\n");
      out.write("\t\t\t\t\t\t\t\t\t의한 개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다. <br>⑥ 이 약관에서 정하지 아니한 사항과\r\n");
      out.write("\t\t\t\t\t\t\t\t\t이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침\r\n");
      out.write("\t\t\t\t\t\t\t\t\t및 관계법령 또는 상관례에 따릅니다.\r\n");
      out.write("\t\t\t\t\t\t\t\t</font>\r\n");
      out.write("\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<font face=\"Tahoma\"> 제4조(서비스의 제공 및 변경) <br> ① “몰”은 다음과 같은 업무를 수행합니다. <br>&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결 <br>&nbsp; 2. 구매계약이 체결된 재화 또는 용역의 배송 <br>&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t3. 기타 “몰”이 정하는 업무 <br>② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화\r\n");
      out.write("\t\t\t\t\t\t\t\t\t또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시\r\n");
      out.write("\t\t\t\t\t\t\t\t\t공지합니다.<br>③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그\r\n");
      out.write("\t\t\t\t\t\t\t\t\t사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다. <br>④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이\r\n");
      out.write("\t\t\t\t\t\t\t\t\t고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.\r\n");
      out.write("\t\t\t\t\t\t\t\t</font>\r\n");
      out.write("\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t<span>이용약관에 동의하십니까?</span>\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"agree_service_check0\" name=\"agree_service_check[]\" value=\"1\" type=\"checkbox\">\r\n");
      out.write("\t\t\t\t\t\t\t<label for=\"agree_service_check0\">동의함</label>\r\n");
      out.write("\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<h4>[필수]개인정보 수집 및 이용 동의</h4>\r\n");
      out.write("\t\t\t\t\t\t<div style=\"overflow: scroll; width: 970px; height: 200px;\">\r\n");
      out.write("\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span style=\"font-size: 9pt;\">1. 개인정보 수집목적 및 이용목적</span>\r\n");
      out.write("\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>나. 회원 관리</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만\r\n");
      out.write("\t\t\t\t\t\t\t\t아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리 , 고지사항 전달</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>2. 수집하는 개인정보 항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 휴대전화번호 , 이메일 , 14세미만 가입자의\r\n");
      out.write("\t\t\t\t\t\t\t\t경우 법정대리인의 정보</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>3. 개인정보의 보유기간 및 이용기간</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안\r\n");
      out.write("\t\t\t\t\t\t\t\t보존합니다.</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>가. 회사 내부 방침에 의한 정보 보유 사유</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>o 부정거래 방지 및 쇼핑몰 운영방침에 따른 보관 : OO년</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>나. 관련 법령에 의한 정보보유 사유</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>o 계약 또는 청약철회 등에 관한 기록</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>-보존이유 : 전자상거래등에서의소비자보호에관한법률</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>-보존기간 : 5년</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>o 대금 결제 및 재화 등의 공급에 관한 기록</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>-보존이유: 전자상거래등에서의소비자보호에관한법률</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>-보존기간 : 5년&nbsp;</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>o 소비자 불만 또는 분쟁처리에 관한 기록</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>-보존이유 : 전자상거래등에서의소비자보호에관한법률</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>-보존기간 : 3년&nbsp;</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>o 로그 기록&nbsp;</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>-보존이유: 통신비밀보호법</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>-보존기간 : 3개월</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>※ 동의를 거부할 수 있으나 거부시 회원 가입이 불가능합니다.</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t<span>이용약관에 동의하십니까?</span>\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"agree_service_check0\" name=\"agree_service_check[]\" value=\"2\" type=\"checkbox\">\r\n");
      out.write("\t\t\t\t\t\t\t<label for=\"agree_service_check0\">동의함</label>\r\n");
      out.write("\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<h4>[선택]쇼핑정보 수신 동의</h4>\r\n");
      out.write("\t\t\t\t\t\t<div style=\"overflow: scroll; width: 970px; height: 200px;\">\r\n");
      out.write("\t\t\t\t\t\t\t<p>할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS나 이메일로 받아보실 수 있습니다.</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지 수신여부를 변경하실 수 있습니다.</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t<span>SMS 수신을 동의하십니까?</span>\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"agree_service_check0\" name=\"agree_service_check[]\" value=\"3\" type=\"checkbox\">\r\n");
      out.write("\t\t\t\t\t\t\t<label for=\"agree_service_check0\">동의함</label>\r\n");
      out.write("\t\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t\t<span>이메일 수신을 동의하십니까?</span>\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"agree_service_check0\" name=\"agree_service_check[]\" value=\"4\" type=\"checkbox\">\r\n");
      out.write("\t\t\t\t\t\t\t<label for=\"agree_service_check0\">동의함</label>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#none\" onclick=\"\" class=\"signin\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<img src=\"//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_member_join1.gif\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\talt=\"회원가입\">\r\n");
      out.write("\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\t\t\t</section>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div>\r\n");
      out.write("\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
