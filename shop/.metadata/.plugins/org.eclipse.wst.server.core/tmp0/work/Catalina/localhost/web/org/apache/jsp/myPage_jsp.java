/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.57
 * Generated at: 2020-12-08 07:10:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class myPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/C:/Users/qkrwo/Desktop/sist_ShoppingMall/shop/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/web/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("jar:file:/C:/Users/qkrwo/Desktop/sist_ShoppingMall/shop/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/web/WEB-INF/lib/jstl-1.2.jar!/META-INF/c-1_0-rt.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1605232503631L));
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>MY PAGE</title>\n");
      out.write("<link href=\"css/maincss.css\" rel=\"stylesheet\">\n");
      out.write("<link href=\"css/kfonts2.css\" rel=\"stylesheet\">\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("<link rel=\"stylesheet\" href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css\">\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js\"></script>\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.5.1.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\t$(function() {\n");
      out.write("\t\t$(\"button#idcheck\").click(function() {\n");
      out.write("\t\t\tif ($(\"input[name='m_pw']\").val().length < 1) {\n");
      out.write("\t\t\t\talert(\"비밀번호를 입력해주세요\");\n");
      out.write("\t\t\t\treturn false;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t$(\"form[name='checkFrm']\").submit();\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("</head>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("<body>\n");
      out.write("\t<div class=\"wrap\">\n");
      out.write("\t\t<div class=\"mainWrap\">\n");
      out.write("\t\t\t<div class=\"mainContents\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<h1 align=\"center\">MYPAGE</h1>\n");
      out.write("\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-4\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card\" style=\"width: 350px; height: 200px; border: 1px black solid;\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card-header text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${memberInfo.m_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("님</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t<h5>[ ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${memberInfo.grade}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" ] 회원이십니다.</h5>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card-body text-center\" style=\"margin: 20px\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"glyphicon glyphicon-user\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t</h1>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card-footer text-center\"></div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-4\">\n");
      out.write("\t\t\t\t\t\t\t<a data-toggle=\"modal\" data-target=\"#myModal\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card\"\n");
      out.write("\t\t\t\t\t\t\t\t\tstyle=\"color: #646464; width: 350px; height: 200px; border: 1px black solid;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-header text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h3>PROFILE</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h5>회원정보</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-body text-center\" style=\"margin: 20px\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"glyphicon glyphicon-pencil\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-footer text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h5>회원이신 고객님의 회원정보를 관리하는 공간입니다.</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-4\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"wishList.jsp\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card\" style=\"width: 350px; height: 200px; border: 1px black solid;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-header text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h3>WISH LIST</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h5>관심상품</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-body text-center\" style=\"margin: 20px\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"glyphicon glyphicon-heart\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-footer text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h5>관심상품으로 등록하신 상품의 목록을 보여드립니다.</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-4\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"point.jsp\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card\" style=\"width: 350px; height: 200px; border: 1px black solid;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-header text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h3>POINT</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h5>적립금</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-body text-center\" style=\"margin: 20px\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"glyphicon glyphicon-plus\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-footer text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h5>적립금은 상품 구매 시 사용하실 수 있습니다.</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-4\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card\" style=\"width: 350px; height: 200px; border: 1px black solid;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-header text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h3>BOARD</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h5>게시물 관리</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-body text-center\" style=\"margin: 20px\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"glyphicon glyphicon-list-alt\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-footer text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h5>고객님께서 작성하신 게시물을 관리하는 공간입니다.</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-4\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"orderList.jsp\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card\" style=\"width: 350px; height: 200px; border: 1px black solid;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-header text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h3>ORDER</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h5>주문내역조회</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-body text-center\" style=\"margin: 20px\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"glyphicon glyphicon-inbox\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"card-footer text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h5>고객님이 주문하신 상품의 주문내역을 확인하실 수 있습니다.</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- 회원정보  Modal -->\n");
      out.write("\t\t<div class=\"modal\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\"\n");
      out.write("\t\t\taria-hidden=\"true\">\n");
      out.write("\t\t\t<div class=\"modal-dialog\">\n");
      out.write("\t\t\t\t<div class=\"modal-content\">\n");
      out.write("\t\t\t\t\t<div class=\"modal-header\">\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"close\" data-dismiss=\"modal\">\n");
      out.write("\t\t\t\t\t\t\t<span aria-hidden=\"true\">&times;</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"sr-only\">Close</span>\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t\t<h4 class=\"modal-title\" id=\"myModalLabel\">비밀번호 재확인</h4>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"modal-body\">\n");
      out.write("\t\t\t\t\t\t<p class=\"ptitle\">본인확인을 위해 한번 더 비밀번호를 입력해주세요.</p>\n");
      out.write("\t\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t\t<form class=\"form-horizontal\" role=\"form\" name=\"checkFrm\" method=\"post\"\n");
      out.write("\t\t\t\t\t\t\taction=\"loginCheck.do?state=mypage\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t<label for=\"id\" class=\"col-xs-2 col-lg-2 control-label\">아이디</label>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-xs-10 col-lg-10\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${memberInfo.m_id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" style=\"border-style: none;\" name=\"m_id\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\treadonly=\"readonly\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t<label for=\"pw\" class=\"col-xs-2 col-lg-2 control-label\">비밀번호</label>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-xs-10 col-lg-5\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"password\" class=\"form-control\" name=\"m_pw\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"modal-footer\">\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-secondary\" id=\"idcheck\">확인</button>\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">취소</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!--Modal -->\n");
      out.write("\n");
      out.write("\t\t<div>\n");
      out.write("\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
