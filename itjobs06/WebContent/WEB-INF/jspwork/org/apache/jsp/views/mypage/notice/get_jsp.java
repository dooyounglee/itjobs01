/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.45
 * Generated at: 2019-10-11 06:43:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.mypage.notice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.kh.resume.model.vo.Resume;
import java.util.ArrayList;
import com.kh.notification.model.vo.Notification;
import com.kh.member.model.vo.Member;

public final class get_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/views/include/user/footer.jsp", Long.valueOf(1570290686748L));
    _jspx_dependants.put("/views/include/user/header_nav.jsp", Long.valueOf(1570771651639L));
    _jspx_dependants.put("/views/include/user/js.jsp", Long.valueOf(1570603225502L));
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
    _jspx_imports_classes.add("com.kh.notification.model.vo.Notification");
    _jspx_imports_classes.add("com.kh.resume.model.vo.Resume");
    _jspx_imports_classes.add("java.util.ArrayList");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("\r\n");
      out.write("<!-- import jobx -->\r\n");
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
      out.write("<!-- End of import from jobx -->\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<header id=\"home\" class=\"hero-area\">\r\n");
      out.write("\t");
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
      out.write("/views/admin/main.jsp\"\r\n");
      out.write("\t\t\t\t\t\tclass=\"button btn btn-common\">관리자</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"mobile-menu\" data-logo=\"assets/img/logo-mobile.png\"></div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</header>\r\n");
      out.write("\r\n");
      out.write("\t");
	Notification noti=(Notification)request.getAttribute("noti");
      out.write("\r\n");
      out.write("\t<div class=\"page-header\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-6 col-md-6 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t<div class=\"breadcrumb-wrapper\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"img-wrapper\">\r\n");
      out.write("\t\t\t\t\t\t\t<img src=\"assets/img/about/company-logo.png\" alt=\"\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"content\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"product-title\">");
      out.print(noti.getTitle() );
      out.write("</h3>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"brand\">");
      out.print(noti.getNickname() );
      out.write("</p>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"tags\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span><i class=\"lni-map-marker\"></i> ");
      out.print(noti.getAddress() );
      out.write("</span> <span><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"lni-calendar\"></i>");
      out.print(noti.getEnroll_date() );
      out.write("</span>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-6 col-md-6 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t<div class=\"month-price\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"year\">연봉</span>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"price\">");
      out.print(noti.getSalary() );
      out.write("</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"month-price float-left\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"year\">마감일</span>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"price\">~");
      out.print(noti.getEnd_date().split(" ")[0] );
      out.write("</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<section class=\"job-detail section\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"row justify-content-between\">\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-4 col-md-12 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t<div class=\"sideber\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"widghet\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3>Job Location</h3>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"maps\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"map\" class=\"map-full\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<iframe\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tsrc=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d405691.57240383344!2d-122.3212843181106!3d37.40247298383319!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb68ad0cfc739%3A0x7eb356b66bd4b50e!2sSilicon+Valley%2C+CA%2C+USA!5e0!3m2!1sen!2sbd!4v1538319316724\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tallowfullscreen=\"\"></iframe>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"widghet\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3>Share This Job</h3>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"share-job\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<form method=\"post\" class=\"subscribe-form\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"email\" name=\"Email\" class=\"form-control\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tplaceholder=\"https://joburl.com\" required=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<button type=\"submit\" name=\"subscribe\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"btn btn-common sub-btn\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<i class=\"lni-files\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"mt-4 footer-social\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a class=\"facebook\" href=\"#\"><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"lni-facebook-filled\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a class=\"twitter\" href=\"#\"><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"lni-twitter-filled\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a class=\"linkedin\" href=\"#\"><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"lni-linkedin-fill\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a class=\"google-plus\" href=\"#\"><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"lni-google-plus\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"meta-tag\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"meta-part\"><a href=\"#\"><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"lni-star\"></i> Write a Review</a></span> <span class=\"meta-part\"><a\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\thref=\"#\"><i class=\"lni-warning\"></i> Reports</a></span> <span\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tclass=\"meta-part\"><a href=\"#\"><i class=\"lni-share\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tShare</a></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-8 col-md-12 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t<div class=\"content-area\">\r\n");
      out.write("\t\t\t\t\t\t<h4>필요언어</h4>\r\n");
      out.write("\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t");
	String[] arr_lan=noti.getP_language().split(",");
							for(int i=0;i<arr_lan.length;i++){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<li>- ");
      out.print(arr_lan[i] );
      out.write("</li>\r\n");
      out.write("\t\t\t\t\t\t");
	} 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t<h4>우대사항</h4>\r\n");
      out.write("\t\t\t\t\t\t<p>");
      out.print(noti.getHope() );
      out.write("</p>\r\n");
      out.write("\t\t\t\t\t\t<h4>직군</h4>\r\n");
      out.write("\t\t\t\t\t\t<p>");
      out.print(noti.getJobs() );
      out.write("</p>\r\n");
      out.write("\t\t\t\t\t\t<h4>세부내용</h4>\r\n");
      out.write("\t\t\t\t\t\t<p>");
      out.print(noti.getContents() );
      out.write("</p>\r\n");
      out.write("\t\t\t\t\t\t");
	if(mem!=null && mem.getM_no()==noti.getCo_no()){ 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" onclick=\"edit(");
      out.print(noti.getNoti_no() );
      out.write(")\" class=\"btn btn-common\">수정</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" onclick=\"del(");
      out.print(noti.getNoti_no() );
      out.write(")\" class=\"btn btn-common\">삭제</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" onclick=\"open_(");
      out.print(noti.getNoti_no() );
      out.write(")\" class=\"btn btn-common\">공개</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" onclick=\"openCancle(");
      out.print(noti.getNoti_no() );
      out.write(")\" class=\"btn btn-common\">비공개</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" onclick=\"location.href='");
      out.print(request.getContextPath() );
      out.write("/myNotification.me'\" class=\"btn btn-common\">나의 공고목록</a>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" onclick=\"showApplier(");
      out.print(noti.getNoti_no() );
      out.write(")\" class=\"btn btn-common\">지원자 확인</a>\r\n");
      out.write("\t\t\t\t\t\t");
	}else if(mem!=null && mem.getType().equals("1")){
								ArrayList<Resume> rlist=(ArrayList<Resume>)request.getAttribute("rlist"); 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<form action=\"apply.vo\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=hidden name=\"noti_no\" value=\"");
      out.print(noti.getNoti_no() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<select name=\"resume_no\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
 for(Resume r:rlist){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(r.getResume_no());
      out.write('"');
      out.write('>');
      out.print(r.getTitle() );
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
	} 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"apply(");
      out.print(noti.getNoti_no() );
      out.write(")\" class=\"btn btn-common\">지원하기</a>\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t");
	} 
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<section id=\"featured\" class=\"section bg-gray pb-45\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<h4 class=\"small-title text-left\">Similar Jobs</h4>\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-6 col-md-12 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t<a class=\"job-listings-featured\" href=\"job-details.html\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-6 col-md-6 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"job-company-logo\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"assets/img/features/img1.png\" alt=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"job-details\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3>Software Engineer</h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"company-neme\">MizTech</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"tags\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><i class=\"lni-map-marker\"></i> New York</span> <span><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"lni-user\"></i>John Smith</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-6 col-md-6 col-xs-12 text-right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"tag-type\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<sapn class=\"heart-icon\"> <i class=\"lni-heart\"></i> </sapn>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"full-time\">Full Time</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-6 col-md-12 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t<a class=\"job-listings-featured\" href=\"job-details.html\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-6 col-md-6 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"job-company-logo\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"assets/img/features/img2.png\" alt=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"job-details\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3>Graphic Designer</h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"company-neme\">Hunter Inc.</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"tags\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><i class=\"lni-map-marker\"></i> New York</span> <span><i\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"lni-user\"></i>John Smith</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-6 col-md-6 col-xs-12 text-right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"tag-type\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<sapn class=\"heart-icon\"> <i class=\"lni-heart\"></i> </sapn>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"part-time\">Part Time</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\tfunction edit(noti_no){\r\n");
      out.write("\t\tlocation.href=\"edit.no?noti_no=\"+noti_no;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction del(noti_no){\r\n");
      out.write("\t\tlocation.href=\"del.no?noti_no=\"+noti_no;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction open_(noti_no){\r\n");
      out.write("\t\tlocation.href=\"open.no?noti_no=\"+noti_no;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction openCancle(noti_no){\r\n");
      out.write("\t\tlocation.href=\"openCancle.no?noti_no=\"+noti_no;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction showApplier(noti_no){\r\n");
      out.write("\t\tlocation.href=\"list.vo?noti_no=\"+noti_no;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction apply(noti_no){\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- footer -->\r\n");
      out.write("\t\t");
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
      out.write("\t<!-- End of footer -->\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- back to top button -->\r\n");
      out.write("\t\t<a href=\"#\" class=\"back-to-top\"> <i class=\"lni-arrow-up\"></i></a>\r\n");
      out.write("\t<!-- End of back to top button -->\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- 뭔지 모르겠어 -->\r\n");
      out.write("\t<div id=\"preloader\">\r\n");
      out.write("\t\t<div class=\"loader\" id=\"loader-1\"></div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- 뭔지 모르겠어 -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- import of jobx -->\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<script src=\"resources/jobx/assets/js/jquery-min.js\"></script>\r\n");
      out.write("<script src=\"resources/jobx/assets/js/popper.min.js\"></script>\r\n");
      out.write("<script src=\"resources/jobx/assets/js/color-switcher.js\"></script>\r\n");
      out.write("<script src=\"resources/jobx/assets/js/owl.carousel.min.js\"></script>\r\n");
      out.write("<script src=\"resources/jobx/assets/js/jquery.slicknav.js\"></script>\r\n");
      out.write("<script src=\"resources/jobx/assets/js/jquery.counterup.min.js\"></script>\r\n");
      out.write("<script src=\"resources/jobx/assets/js/waypoints.min.js\"></script>\r\n");
      out.write("<script src=\"resources/jobx/assets/js/form-validator.min.js\"></script>\r\n");
      out.write("<script src=\"resources/jobx/assets/js/contact-form-script.js\"></script>\r\n");
      out.write("<script src=\"resources/jobx/assets/js/main.js\"></script>\r\n");
      out.write("<!-- <script src=\"resources/util/menubar_animation.js\"></script> -->");
      out.write("\r\n");
      out.write("\t<!-- End of import of jobx -->\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\t$('.inner-header').children('h3').text(page_header_title)\r\n");
      out.write("</script>\r\n");
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
