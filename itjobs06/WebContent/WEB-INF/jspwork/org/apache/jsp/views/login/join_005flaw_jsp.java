/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.45
 * Generated at: 2019-10-11 13:43:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.kh.member.model.vo.Member;

public final class join_005flaw_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/views/include/user/footer.jsp", Long.valueOf(1570290686748L));
    _jspx_dependants.put("/views/include/user/header_nav.jsp", Long.valueOf(1570788169005L));
    _jspx_dependants.put("/views/include/footer.jsp", Long.valueOf(1569726248500L));
    _jspx_dependants.put("/views/include/user/style.jsp", Long.valueOf(1570301765407L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.kh.member.model.vo.Member");
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
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>회원가입</title>\r\n");
      out.write("<script type=\"text/javascript\" src=\"http://code.jquery.com/jquery-1.11.3.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/jobx/assets/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/jobx/assets/css/line-icons.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/jobx/assets/css/owl.carousel.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/jobx/assets/css/owl.theme.default.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/jobx/assets/css/slicknav.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/jobx/assets/css/animate.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/jobx/assets/css/main.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/jobx/assets/css/responsive.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/jobx/assets/css/colors/cyan.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/jobx/assets/css/color-switcher.css\">");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
 
	String contextPath=request.getContextPath();
	Member mem=(Member)session.getAttribute("mem");
	String head=request.getParameter("head");
	if(head!=null){
		session.setAttribute("head", head);
}

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg fixed-top scrolling-navbar\">\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"theme-header clearfix\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\"\r\n");
      out.write("\t\t\t\t\tdata-target=\"#main-navbar\" aria-controls=\"main-navbar\"\r\n");
      out.write("\t\t\t\t\taria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("\t\t\t\t\t<span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("\t\t\t\t\t<span class=\"lni-menu\"></span>\r\n");
      out.write("\t\t\t\t\t<span class=\"lni-menu\"></span>\r\n");
      out.write("\t\t\t\t\t<span class=\"lni-menu\"></span>\r\n");
      out.write("\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t<a href=\"");
      out.print(request.getContextPath() );
      out.write("\" class=\"navbar-brand\"><img\r\n");
      out.write("\t\t\t\t\tsrc=\"resources/images/logo12.png\"\r\n");
      out.write("\t\t\t\t\tstyle=\"width: 80px; height: 32px;\" alt=\"\"></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"collapse navbar-collapse\" id=\"main-navbar\">\r\n");
      out.write("\t\t\t\t<ul class=\"navbar-nav mr-auto w-100 justify-content-end\">\r\n");
      out.write("\t\t\t\t\t");
	if(mem!=null){ 
      out.write("\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${mem.nickname }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("님 안녕하세요.</a></li>\r\n");
      out.write("\t\t\t\t\t");
	} 
      out.write("\r\n");
      out.write("\t\t\t\t\t<li class=\"aaa nav-item\">\r\n");
      out.write("\t\t\t\t\t\t<div></div>\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link\" href=\"");
      out.print(request.getContextPath() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\tHome </a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item aaa dropdown\">\r\n");
      out.write("\t\t\t\t\t\t<div></div><a\r\n");
      out.write("\t\t\t\t\t\tclass=\"nav-link dropdown-toggle\" href=\"#\" data-toggle=\"dropdown\"\r\n");
      out.write("\t\t\t\t\t\taria-haspopup=\"true\" aria-expanded=\"false\"> 게시판 </a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/list.bo?head=main\">전체</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/list.bo?head=free\">자유</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/list.bo?head=study\">스터디</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/list.bo?head=project\">프로젝트</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/list.bo?head=qna\">공지사항</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/list.bo?head=form\">서식</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"pricing.html\">Pricing\r\n");
      out.write("\t\t\t\t\t\t\t\t\tTables</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"contact.html\">Contact</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item aaa\"><div></div>\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/notificationList.se\">\r\n");
      out.write("\t\t\t\t\t\t\t공고검색 </a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item aaa\"><div></div>\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/resumeList.se\">\r\n");
      out.write("\t\t\t\t\t\t\t인재검색 </a></li>\r\n");
      out.write("\t\t\t\t\t");
	if(mem!=null && mem.getType().equals("1")){ 
      out.write("\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item dropdown aaa\"><div></div>\r\n");
      out.write("\t\t\t\t\t<a\r\n");
      out.write("\t\t\t\t\t\tclass=\"nav-link dropdown-toggle\" href=\"");
      out.print(request.getContextPath());
      out.write("/list.re\" data-toggle=\"dropdown\"\r\n");
      out.write("\t\t\t\t\t\taria-haspopup=\"true\" aria-expanded=\"false\"> 마이페이지 </a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/myInfo.me\">내 정보수정\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/myApplyList.vo\">지원리스트\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/myCompanyList.like\">관심기업\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item active\"\r\n");
      out.write("\t\t\t\t\t\t\t\thref=\"");
      out.print(request.getContextPath());
      out.write("/list.re\">이력서관리</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"mylist.qu\">나의문의\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"job-alerts.html\">지원하기\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t\t");
	}else if(mem!=null && mem.getType().equals("2")){ 
      out.write("\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item dropdown aaa\"><div></div>\r\n");
      out.write("\t\t\t\t\t<a\r\n");
      out.write("\t\t\t\t\t\tclass=\"nav-link dropdown-toggle\" href=\"#\" data-toggle=\"dropdown\"\r\n");
      out.write("\t\t\t\t\t\taria-haspopup=\"true\" aria-expanded=\"false\"> 마이페이지 </a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/myInfo.me\">내 정보수정\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/myNotification.me\">공고리스트\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/myResumeList.like\">관심인재\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/mylist.qu\">나의문의\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t");
	}else{ 
      out.write("\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item aaa\"><div></div>\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/login.me\">마이페이지</a></li>\r\n");
      out.write("\t\t\t\t\t");
	} 
      out.write("\r\n");
      out.write("\t\t\t\t\t");
	if(mem!=null){ 
      out.write("\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item aaa\"><div></div>\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/logout.me\">로그아웃</a></li>\r\n");
      out.write("\t\t\t\t\t");
	}else{ 
      out.write("\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item aaa\"><div></div>\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/login.me\">로그인</a></li>\r\n");
      out.write("\t\t\t\t\t");
	} 
      out.write("\r\n");
      out.write("\t\t\t\t\t<li class=\"button-group\"><a href=\"");
      out.print(request.getContextPath());
      out.write("/main.ad\"\r\n");
      out.write("\t\t\t\t\t\tclass=\"button btn btn-common\">관리자</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"mobile-menu\" data-logo=\"assets/img/logo-mobile.png\"></div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"page-header\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-lg-12\">\r\n");
      out.write("<div class=\"inner-header\">\r\n");
      out.write("<h3>회원가입</h3>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<section id=\"content\" class=\"section-padding\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class=\"row justify-content-center\">\r\n");
      out.write("<div class=\"col-lg-5 col-md-6 col-xs-12\">\r\n");
      out.write("<div class=\"page-login-form box\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<div class=\"input-icon\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<div class=\"input-icon\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"form-group form-check\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<button class=\"btn btn-common log-btn\" onclick=\"location.href='");
      out.print(contextPath);
      out.write("/join.seeker'\">일반(구직)</button>\r\n");
      out.write("\r\n");
      out.write("<button class=\"btn btn-common log-btn\" onclick=\"location.href='");
      out.print(contextPath);
      out.write("/join.co'\">기업(구인)</button>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write(" </div>\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<footer>\r\n");
      out.write("\r\n");
      out.write("\t<section class=\"footer-Content\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-3 col-md-3 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t<div class=\"widget\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"footer-logo\">\r\n");
      out.write("\t\t\t\t\t\t\t<img src=\"assets/img/logo-footer.png\" alt=\"\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"textwidget\">\r\n");
      out.write("\t\t\t\t\t\t\t<p>Sed consequat sapien faus quam bibendum convallis quis in\r\n");
      out.write("\t\t\t\t\t\t\t\tnulla. Pellentesque volutpat odio eget diam cursus semper.</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-6 col-md-4 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t<div class=\"widget\">\r\n");
      out.write("\t\t\t\t\t\t<h3 class=\"block-title\">Quick Links</h3>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">About Us</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Support</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">License</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Contact</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Terms & Conditions</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Privacy</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Refferal Terms</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Product License</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-3 col-md-4 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t<div class=\"widget\">\r\n");
      out.write("\t\t\t\t\t\t<h3 class=\"block-title\">Subscribe Now</h3>\r\n");
      out.write("\t\t\t\t\t\t<p>Sed consequat sapien faus quam bibendum convallis.</p>\r\n");
      out.write("\t\t\t\t\t\t<form method=\"post\" id=\"subscribe-form\" name=\"subscribe-form\"\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"validate\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group is-empty\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"email\" value=\"\" name=\"Email\" class=\"form-control\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tid=\"EMAIL\" placeholder=\"Enter Email...\" required=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<button type=\"submit\" name=\"subscribe\" id=\"subscribes\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"btn btn-common sub-btn\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"lni-envelope\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"mt-3 footer-social\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"facebook\" href=\"#\"><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"lni-facebook-filled\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"twitter\" href=\"#\"><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"lni-twitter-filled\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"linkedin\" href=\"#\"><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"lni-linkedin-fill\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"google-plus\" href=\"#\"><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"lni-google-plus\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"copyright\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-12\">\r\n");
      out.write("\t\t\t\t\t<div class=\"site-info text-center\">\r\n");
      out.write("\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\tDesigned and Developed by <a href=\"https://uideck.com\"\r\n");
      out.write("\t\t\t\t\t\t\t\trel=\"nofollow\">UIdeck</a>\r\n");
      out.write("\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("</footer>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t<h1>join</h1>\r\n");
      out.write("\t일반회원 이용약관<br>\r\n");
      out.write("\t<a href=\"");
      out.print(contextPath );
      out.write("/views/login/join_member.jsp\">다음</a>\r\n");
      out.write("\t<hr>\r\n");
      out.write("\t기업회원 이용약관<br>\r\n");
      out.write("\t<a href=\"");
      out.print(contextPath );
      out.write("/views/login/join_company.jsp\">다음</a>\r\n");
      out.write("\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<footer class=\"sticky-footer bg-white\">\r\n");
      out.write("\t<div class=\"container my-auto\">\r\n");
      out.write("\t\t<div class=\"copyright text-center my-auto\">\r\n");
      out.write("\t\t\t<span>Copyright &copy; ITJobs 2019</span>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</footer>");
      out.write("\r\n");
      out.write("</body>\r\n");
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