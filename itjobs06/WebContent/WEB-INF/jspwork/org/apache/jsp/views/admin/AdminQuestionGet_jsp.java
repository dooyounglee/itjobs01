/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.45
 * Generated at: 2019-10-15 05:28:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.kh.question.model.vo.Question;
import com.kh.member.model.vo.Member;

public final class AdminQuestionGet_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(7);
    _jspx_dependants.put("/views/include/user/footer.jsp", Long.valueOf(1571038389878L));
    _jspx_dependants.put("/views/include/user/header_nav.jsp", Long.valueOf(1571105030475L));
    _jspx_dependants.put("/views/include/user/page_header.jsp", Long.valueOf(1570290686536L));
    _jspx_dependants.put("/views/include/footer.jsp", Long.valueOf(1569726248500L));
    _jspx_dependants.put("/views/include/user/js.jsp", Long.valueOf(1570603225502L));
    _jspx_dependants.put("/views/include/user/style.jsp", Long.valueOf(1570301765407L));
    _jspx_dependants.put("/views/include/user/mypage_menu.jsp", Long.valueOf(1570788169037L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.kh.question.model.vo.Question");
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
      out.write("<!-- import of jobx -->\r\n");
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
      out.write("<!-- End of import of jobx -->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("  <header id=\"home\" class=\"hero-area\">\r\n");
      out.write("   ");
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
      out.write("   </header>\r\n");
      out.write("\r\n");
      out.write("   <!-- page-header -->\r\n");
      out.write("   ");
      out.write("\r\n");
      out.write("<div class=\"page-header\">\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"col-lg-12\">\r\n");
      out.write("\t\t\t\t<div class=\"inner-header\">\r\n");
      out.write("\t\t\t\t\t<h3></h3>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("   <script>\r\n");
      out.write("      var page_header_title='관리자 문의보기'\r\n");
      out.write("   </script>\r\n");
      out.write("   <!-- end of page-header -->\r\n");
      out.write("   \r\n");
      out.write("   <div class=\"container\">\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- left -->\r\n");
      out.write("            ");
      out.write("\r\n");
      out.write("    <script src=\"resources/jobx/assets/js/jquery-min.js\"></script>\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<div class=\"col-lg-4 col-md-12 col-xs-12\">\r\n");
      out.write("\t<div class=\"right-sideabr\">\r\n");
      out.write("\t\t<h4>Manage Account</h4>\r\n");
      out.write("\t\t<ul class=\"list-item\">\r\n");
      out.write("\t\t\t");
	if(mem!=null && mem.getType().equals("1")){ 
      out.write("\r\n");
      out.write("\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/list.re\">이력서 관리</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/myApplyList.vo\">내가 지원한 기업</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/myCompanyList.like\">관심기업</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/myNotificationList.like\">관심공고</a></li>\r\n");
      out.write("\t\t\t");
	}else if(mem!=null){ 
      out.write("\r\n");
      out.write("\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/myNotification.me\">공고 관리</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/myResumeList.like\">관심인재</a></li>\r\n");
      out.write("\t\t\t");
	} 
      out.write("\r\n");
      out.write("\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/changePw.me\">정보 변경</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/mylist.qu\">나의 문의</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#\" id=\"modal_open\" data-target=\"#exampleModal\" data-toggle=\"modal\">탈퇴</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\t$(\"#modal_open\").click(function () {\r\n");
      out.write("\t\tif(confirm(\"정말 탈퇴하시겠습니까?\")){\r\n");
      out.write("\t\t\talert(\"ok누름\")\r\n");
      out.write("\t\t\t$(\"#exampleModal\").modal('show');\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t})\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<div class=\"modal\" tabindex=\"-1\" role=\"dialog\" id=\"exampleModal\">\r\n");
      out.write("  <div class=\"modal-dialog\" role=\"document\">\r\n");
      out.write("    <div class=\"modal-content\">\r\n");
      out.write("      <div class=\"modal-header\">\r\n");
      out.write("        <h5 class=\"modal-title\">Modal title</h5>\r\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("        </button>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-body\">\r\n");
      out.write("        <p>정말 탈퇴할꺼면 비번을 입력하세요.</p>\r\n");
      out.write("        <input name=pw>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-footer\">\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-primary\" id=\"realLeave\">탈퇴하기</button>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\t$(document).on('click','#realLeave',function(){\r\n");
      out.write("\t\tvar leaveForm=$('form')\r\n");
      out.write("\t\tleaveForm.attr('action','leave.me')\r\n");
      out.write("\t\tleaveForm.attr('method','post')\r\n");
      out.write("\t\tvar pwTag=$('input[name=\"pw\"]').clone()\r\n");
      out.write("\t\tleaveForm.empty();\r\n");
      out.write("\t\tleaveForm.append(pwTag)\r\n");
      out.write("\r\n");
      out.write("\t\tleaveForm.submit()\r\n");
      out.write("\t})\r\n");
      out.write("\t\r\n");
      out.write("</script>");
      out.write("\r\n");
      out.write("            <!-- End of left -->\r\n");
      out.write("            \r\n");
      out.write("\r\n");
      out.write("<div class=\"col-lg-6 col-md-8 col-xs-12\">\r\n");
      out.write("<div class=\"inner-box my-resume\">\r\n");
      out.write("<div class=\"author-resume\">\r\n");
      out.write("<div class=\"about-me item\">\r\n");
      out.write("<h3>문의보기</h3>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"about-me item\">\r\n");
      out.write('\r');
      out.write('\n');
	Question q=(Question)request.getAttribute("q");
      out.write("\r\n");
      out.write("<h3>");
      out.print(q.getTitle() );
      out.write("</h3>\r\n");
      out.write("<span>등록날짜 : ");
      out.print(q.getEnroll_date() );
      out.write(" | </span>\r\n");
      out.write("<span>처리날짜 : ");
      out.print(q.getEnd_date());
      out.write("  |  </span>\r\n");
      out.write("&nbsp;\r\n");
      out.write("<label>처리상태 : \r\n");
if(q.getStatus().equals("Y")){ 
      out.write("\r\n");
      out.write("처리완료\r\n");
}else{
      out.write("\r\n");
      out.write("미처리\r\n");
} 
      out.write("\r\n");
      out.write("</label>\r\n");
      out.write("<label>  | 작성자 : ");
      out.print( q.getM_no() );
      out.write(" </label>\r\n");
      out.write("\t<div class=\"form-group\">\r\n");
      out.write("\t<label for=\"comment\"></label>\r\n");
      out.write("\t<textarea class=\"form-control\" rows=\"15\" id=\"comment\" name=\"contents\"  readonly>");
      out.print( q.getContents());
      out.write("</textarea>\r\n");
      out.write("\r\n");
      out.write("<div class=\"work-experence item\">\r\n");
	if(q.getStatus().equals("Y")){ 
      out.write("\r\n");
      out.write("<h3>답변 </h3>\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<label for=\"comment\"></label>\r\n");
      out.write("<textarea class=\"form-control\" rows=\"15\" id=\"comment\" name=\"contents\"  readonly>");
      out.print( q.getAnswer());
      out.write("</textarea>\r\n");
	} 
      out.write("\r\n");
      out.write("\r\n");
	if(q.getStatus().equals("N")){
      out.write("\r\n");
      out.write("<a class=\"btn btn-common btn-sm\" onclick=\"answer()\">답변하기</a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<form id=answerForm action=\"answer.qu\" method=post autocomplete=off style=\"display:none\">\r\n");
      out.write("<input type=hidden name=\"qno\" value=\"");
      out.print(q.getQ_no() );
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("<textarea class=\"form-control\" rows=\"15\" id=\"answer\" name=\"answer\" ></textarea>\r\n");
      out.write("\r\n");
      out.write("<a class=\"btn btn-common btn-sm\" onclick=\"answerInsert()\">답변등록</a>\r\n");
      out.write("\r\n");
      out.write("</form>\r\n");
      out.write("<script>\r\n");
      out.write("function answer(){\r\n");
      out.write("\t$('#answerForm').toggle();\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<a class=\"btn btn-common btn-sm\" id=\"new\" href=\"");
      out.print(contextPath);
      out.write("/list.qu.ad\">목록으로</a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>  \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("</div>\r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\tfunction answer(){\r\n");
      out.write("\t\t$('#answerForm').toggle();\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t$('.inner-header').children('h3').text(page_header_title)\r\n");
      out.write("\t\r\n");
      out.write("\tfunction answerInsert(){\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tvar answer = $('#answer');\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif(answer.val().trim().length == 0){\r\n");
      out.write("\t\t\talert(\"답변내용을입력해주세요\");\r\n");
      out.write("\t\t\tanswer.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}else{\r\n");
      out.write("\t\t\t$('#answerForm').submit();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write(" ");
	} 
      out.write(" \r\n");
      out.write("   <!-- footer -->\r\n");
      out.write("      ");
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
      out.write("   <!-- End of footer -->\r\n");
      out.write("   \r\n");
      out.write("   <!-- back to top button -->\r\n");
      out.write("      <a href=\"#\" class=\"back-to-top\"> <i class=\"lni-arrow-up\"></i></a>\r\n");
      out.write("   <!-- End of back to top button -->\r\n");
      out.write("   \r\n");
      out.write("   <!-- 뭔지 모르겠어 -->\r\n");
      out.write("   <div id=\"preloader\">\r\n");
      out.write("      <div class=\"loader\" id=\"loader-1\"></div>\r\n");
      out.write("   </div>\r\n");
      out.write("   <!-- 뭔지 모르겠어 -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <!-- import of jobx -->\r\n");
      out.write("   ");
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
      out.write("   <!-- End of import of jobx -->\r\n");
      out.write("   \r\n");
      out.write("   ");
      out.write("\r\n");
      out.write("<footer class=\"sticky-footer bg-white\">\r\n");
      out.write("\t<div class=\"container my-auto\">\r\n");
      out.write("\t\t<div class=\"copyright text-center my-auto\">\r\n");
      out.write("\t\t\t<span>Copyright &copy; ITJobs 2019</span>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</footer>");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
