/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.45
 * Generated at: 2019-10-15 06:47:50 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.kh.member.model.vo.Member;

public final class join_005fcompany_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/views/include/user/footer.jsp", Long.valueOf(1571038389878L));
    _jspx_dependants.put("/views/include/user/header_nav.jsp", Long.valueOf(1571105030475L));
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
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("\t#check{\r\n");
      out.write("\tborder:0px;\r\n");
      out.write("\t}\r\n");
      out.write("\t#checkDiv{\r\n");
      out.write("\tmargin-bottom:0px;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\t.checkDiv2{\r\n");
      out.write("\twidth:200px;height:20px\r\n");
      out.write("\t\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
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
      out.write("\t\t\t\t\tstyle=\"width: 100px; height: 35px;\" alt=\"\"></a>\r\n");
      out.write("\t\t\t\t<a style=\"color:black;\">현재접속자수: <span id=userCounting>1</span>명</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write(" \tvar webSocket = new WebSocket('ws://");
      out.print(request.getServerName());
      out.write(':');
      out.print(request.getServerPort());
      out.write("/itjobs/userCounting');\r\n");
      out.write("\twebSocket.onerror = function(event) {\r\n");
      out.write("\t\tonError(event)\r\n");
      out.write("\t};\r\n");
      out.write("\twebSocket.onopen = function(event) {\r\n");
      out.write("\t\tonOpen(event)\r\n");
      out.write("\t};\r\n");
      out.write("\twebSocket.onmessage = function(event) {\r\n");
      out.write("\t\tonMessage(event)\r\n");
      out.write("\t};\r\n");
      out.write("\twebSocket.onclose = function(event) {\r\n");
      out.write("\t\tonClose(event)\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction onMessage(event) {//다른사람 동작->나한테 발생\r\n");
      out.write("\t\tcallback(event.data)\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction onOpen(event) {\r\n");
      out.write("\t\twebSocket.send(\"어차피 안나올 값\");\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction onError(event) {\r\n");
      out.write("\t\talert(event.data);\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction onClose(event) {\r\n");
      out.write("\t\twebSocket.send(\"어차피 안나올 값\");\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction callback(str){\r\n");
      out.write("\t\tvar arr=str.split(',');\r\n");
      out.write("\t\t$('#userCounting').text(arr[0]);\r\n");
      out.write("\t\t$('#todayCount').text(arr[2]);\r\n");
      out.write("\t\t$('#totalCount').text(arr[1]);\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("\t\t\t<div class=\"collapse navbar-collapse\" id=\"main-navbar\">\r\n");
      out.write("\t\t\t\t<ul class=\"navbar-nav mr-auto w-100 justify-content-end\">\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\">\r\n");
      out.write("\t\t\t\t\t\t오늘 <span id=\"todayCount\">&nbsp;</span> · 전체 <span id=\"totalCount\">&nbsp;</span>\r\n");
      out.write("\t\t\t\t\t</a></li>\r\n");
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
      out.write("/list.bo?head=qu\">공지사항</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/list.bo?head=form\">서식</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
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
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/myNotificationList.like\">관심공고\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\"\r\n");
      out.write("\t\t\t\t\t\t\t\thref=\"");
      out.print(request.getContextPath());
      out.write("/list.re\">이력서관리</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a class=\"dropdown-item\" href=\"mylist.qu\">나의문의\r\n");
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
}else if(mem !=null && mem.getType().equals("0")){ 
      out.write("\r\n");
      out.write("\t\t\t\t\t<li class=\"button-group\"><a href=\"");
      out.print(request.getContextPath());
      out.write("/main.ad\"\r\n");
      out.write("\t\t\t\t\t\tclass=\"button btn btn-common\">관리자</a></li>\r\n");
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
      out.write("\t\t\t\t\t<li class=\"nav-item aaa\"><div></div>\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/joinlaw.jo\">회원가입</a></li>\r\n");
      out.write("\t\t\t\t\t");
	} 
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
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
      out.write("\r\n");
      out.write("\t<div class=\"page-header\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t<div class=\"col-lg-12\">\r\n");
      out.write("\t\t<div class=\"inner-header\">\r\n");
      out.write("\t\t<h3>Create Your account</h3>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<section id=\"content\" class=\"section-padding\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row justify-content-center\">\r\n");
      out.write("\t\t<div class=\"col-lg-5 col-md-6 col-xs-12\">\r\n");
      out.write("\t\t<div class=\"page-login-form box\">\r\n");
      out.write("\t\t<h3>\r\n");
      out.write("\t\t기업\r\n");
      out.write("\t\t</h3>\r\n");
      out.write("\t\t<form class=\"login-form\" id=\"joinForm\"action=\"");
      out.print(request.getContextPath() );
      out.write("/join.me\" method=\"post\" autocomplete=off onsubmit=\"return validate();\">\r\n");
      out.write("\t\t<input type=\"hidden\"value=2 name=type readonly>\r\n");
      out.write("\t\t<input type=\"hidden\"value=1 name=type readonly>\r\n");
      out.write("\t\t<div class=\"form-group\" id=\"checkDiv\">\r\n");
      out.write("\t\t<div class=\"input-icon\">\r\n");
      out.write("\t\t<i class=\"lni-user\"></i>\r\n");
      out.write("\t\t<input type=\"text\" class=\"form-control\" id=\"nickName\" name=\"nickName\" placeholder=\"기업명(특수문자불가능)\" oninput=\"nickOverlapCheck()\" required>\r\n");
      out.write("\t\t<div id=\"nickCheck\" class = \"checkDiv2\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"form-group\" id=\"checkDiv\">\r\n");
      out.write("\t\t<div class=\"input-icon\">\r\n");
      out.write("\t\t<i class=\"lni-envelope\"></i>\r\n");
      out.write("\t\t<input type=\"text\" class=\"form-control\" id=\"email\" name=\"email\" placeholder=\"이메일\" oninput=\"emailOverlapCheck()\" required>\r\n");
      out.write("\t\t<div id=\"emailCheck\" class = \"checkDiv2\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t<div class=\"input-icon\">\r\n");
      out.write("\t\t<i class=\"lni-lock\"></i>\r\n");
      out.write("\t\t<input type=\"password\" class=\"form-control\" name=\"pw\" placeholder=\"비밀번호\" oninput=\"pwdOverlapCheck()\" required>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t<div class=\"input-icon\">\r\n");
      out.write("\t\t<i class=\"lni-unlock\"></i>\r\n");
      out.write("\t\t<input type=\"password\" class=\"form-control\" name=\"pw1\" placeholder=\"비밀번호 확인\" oninput=\"pwdOverlapCheck()\" required>\r\n");
      out.write("\t\t<div id=\"pwdCheck\" class = \"checkDiv2\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<input type=\"submit\" id=\"submit\" class=\"btn btn-common log-btn mt-3\" value=\"가입\" disabled>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</section>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<script>\r\n");
      out.write("\t\r\n");
      out.write("\t\tvar flag1 = false;\r\n");
      out.write("\t \tvar flag2 = false;\r\n");
      out.write("\t \tvar flag3 = false;\r\n");
      out.write("\t \tvar flag4 = false;\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t \t/*  닉네임 중복체크 */\r\n");
      out.write("\t\tfunction nickOverlapCheck(){\r\n");
      out.write("\t\r\n");
      out.write("\t\t\tvar nickNameCo = $(\"#nickName\").val();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar nickDiv = $(document.getElementById(\"nickCheck\"));\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar regExp = /^[가-힣a-zA-Z][가-힣a-zA-Z0-9]{1,}$/;\r\n");
      out.write("\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\t\turl:\"");
      out.print(request.getContextPath() );
      out.write("/nickoverlap.me\",\r\n");
      out.write("\t\t\t\t\tdata:{nickNameCo:nickNameCo},\r\n");
      out.write("\t\t\t\t\ttype:\"get\",\r\n");
      out.write("\t\t\t\t\tsuccess:function(result1){\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\tif(result1==1){\t\r\n");
      out.write("\t\t\t\t\t\t\t nickDiv.html('중복되는 닉네임이 있습니다').attr('style','color:red'); \r\n");
      out.write("\t\t\t\t\t\t\tflag1=false;\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t}else if(!regExp.test(nickNameCo)){\t\r\n");
      out.write("\t\t\t\t\t\t\t\tnickDiv.html('닉네임 양식에 맞지 않습니다').attr('style','color:red');\r\n");
      out.write("\t\t\t\t\t\t\t\tflag1=false;\r\n");
      out.write("\t\t\t\t\t\t\t}else{\r\n");
      out.write("\t\t\t\t\t\t\t\tnickDiv.html('사용가능').attr('style','color:green');\r\n");
      out.write("\t\t\t\t\t\t\t\tflag1 = true;\r\n");
      out.write("\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\tbtnChange();\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t},error:function(){\r\n");
      out.write("\t\t\t\t\t\tconsole.log(\"ajax실패\");\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t });\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t/* 이메일 중복체크 */\r\n");
      out.write("\t\tfunction emailOverlapCheck(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar email = $(\"#email\").val();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar emailDiv = $(document.getElementById(\"emailCheck\"));\r\n");
      out.write("\t\t\t/* 이메일 유효성검사  */\r\n");
      out.write("\t\t\t \r\n");
      out.write("\t\t\t  var regExp = /^([\\w-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([\\w-]+\\.)+)([a-zA-Z]{2,4}))$/;  \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t if(!regExp.test(email)){\r\n");
      out.write("\t\t\t\t emailDiv.html('이메일 형식에 맞지 않습니다').attr('style','color:red');\r\n");
      out.write("\t\t\t\tflag4=false;\r\n");
      out.write("\t\t\t }else{\r\n");
      out.write("\t\t\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\t\t\t\turl:\"");
      out.print(request.getContextPath() );
      out.write("/emoverlap.me\",\r\n");
      out.write("\t\t\t\t\t\t\tdata:{email:email},\r\n");
      out.write("\t\t\t\t\t\t\ttype:\"get\",\r\n");
      out.write("\t\t\t\t\t\t\tsuccess:function(result){\r\n");
      out.write("\t\t\t\t\t\t\t\tif(result==0){\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\temailDiv.html('사용가능').attr('style','color:green');\r\n");
      out.write("\t\t\t\t\t\t\t\t\tflag2 = true;\r\n");
      out.write("\t\t\t\t\t\t\t\t}else{\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\temailDiv.html('사용불가능').attr('style','color:red');\r\n");
      out.write("\t\t\t\t\t\t\t\t\t flag2 = false;\r\n");
      out.write("\t\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t},error:function(){\r\n");
      out.write("\t\t\t\t\t\t\t\tconsole.log(\"ajax실패\");\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t});\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\tflag4=true;\r\n");
      out.write("\t\t\t \t\t}\t\r\n");
      out.write("\t\t\t \r\n");
      out.write("\t\t\t btnChange();\r\n");
      out.write("\t\t\t \t}\r\n");
      out.write("\t\t\t/* 비밀번호 유효성검사 */\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tfunction pwdOverlapCheck(){\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\tvar pwdDiv = $(document.getElementById(\"pwdCheck\"));\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tvar pw1 = $(\"#joinForm input[name=pw]\");\r\n");
      out.write("\t\t\t\tvar pw2 = $(\"#joinForm input[name=pw1]\");\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\tif(pw1.val() == pw2.val()){\t\r\n");
      out.write("\t\t\t\t\t\tpwdDiv.html('비밀번호와 일치 합니다').attr('style','color:green');\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\tflag3 = true;\r\n");
      out.write("\t\t\t\t\t}else{\t\r\n");
      out.write("\t\t\t\t\t\tpwdDiv.html('비밀번호와 일치하지 않습니다').attr('style','color:red');\r\n");
      out.write("\t\t\t\t\t\tflag3=false;\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\tbtnChange();\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tfunction btnChange(){\t// 전체적으로 체크 하기위해서 \r\n");
      out.write("\t\t\t\tif((flag1&&flag2&&flag3&&flag4)){\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t$(\"#submit\").attr('disabled',false).attr('style','background:#00bcd4').attr('value','가입');\r\n");
      out.write("\t\t\t\t}else{\r\n");
      out.write("\t\t\t\t\t$(\"#submit\").attr('disabled',true).attr('style','background:gray').attr('value','양식을 확인해 주세요');\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t</script>\r\n");
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
      out.write("\t\t\t\t\t\t<h1 class=\"block-title\">IT JOBS</h1>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"textwidget\">\r\n");
      out.write("\t\t\t\t\t\t\t<p>Sed consequat sapien faus quam bibendum convallis quis in\r\n");
      out.write("\t\t\t\t\t\t\t\tnulla. Pellentesque volutpat odio eget diam cursus semper.</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-6 col-md-4 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t<div class=\"widget\">\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<h5 class=\"block-title\">CHANG JJOCK</h5>\r\n");
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
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\tBy itjobs chang jjock.\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
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
      out.write("\r\n");
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
