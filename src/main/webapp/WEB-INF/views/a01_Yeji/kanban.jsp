<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>AEAPPMS</title>
<style>
#main-button {
	display: inline;
	position: relative;
	background-color: none;
	width: 100%;
	height: 140px;
}

.content-panel {
	position: relative;
	width: 50%;
	margin-left: 14px;
}

#side-panel {
	height: 520px;
}

.details {
	height: 16px;
}

th {
	text-align: center;
}

#button-icon {
	font-size: 65px;
	position: relative;
	color: rgba(255,255,255,0.5);
	
}

#TOFont {
	font-size: 16px;
	text-align: center;
	color: rgba(255,255,255,0.5);
}
.white-panel{
	position: flex;
}

canvas{
	postion: relative;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Favicons -->
<link href="${path}/Dashio/img/favicon.png" rel="icon">
<link href="${path}/Dashio/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="${path}/Dashio/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--external css-->
<link href="${path}/Dashio/lib/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="${path}/Dashio/css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css"
	href="${path}/Dashio/lib/gritter/css/jquery.gritter.css" />
<link rel="stylesheet" href="${path}/lib/xchart/xcharts.css">
<!-- Custom styles for this template -->
<link href="${path}/Dashio/css/style.css" rel="stylesheet">
<link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">
<script src="${path}/Dashio/lib/chart-master/Chart.js"></script>

<!-- chart js -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
	<!--script for this page-->
	<script src="${path}/Dashio/lib/xchart/d3.v3.min.js"></script>
	<script src="${path}/Dashio/lib/xchart/xcharts.min.js"></script>
	<script src="${path}/js/chartjs.js"></script>
		<!--script for this page-->
	<script src="${path}/Dashio/lib/sparkline-chart.js"></script>
	<script src="${path}/Dashio/lib/zabuto_calendar.js"></script>
		<!-- js placed at the end of the document so the pages load faster -->
	<script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>

	<script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
	<script src="${path}/Dashio/lib/jquery.nicescroll.js"
		type="text/javascript"></script>
	<script src="${path}/Dashio/lib/jquery.sparkline.js"></script>
	<!--common script for all pages-->
	<script src="${path}/Dashio/lib/common-scripts.js"></script>
	<script type="text/javascript"
		src="${path}/Dashio/lib/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="${path}/Dashio/lib/gritter-conf.js"></script>
	
	<link rel="stylesheet" href="${path}/a01_Yeji/css/main.css">
<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
 
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="${path}/indexprjWhole.do" class="logo"><b>AEAP<span>PMS</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-tasks"></i>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">Select Dashboard</p>
              </li>
              <li>
            
                <a href="${path}/indexprjWhole.do">
                  <div class="task-info">
                    <div class="desc">A Whole</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/indexprj1.do?prjno=P1000">					<!-- 추후 수정 -->
                  <div class="task-info">
                    <div class="desc">Project1</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/indexprj1.do?prjno=P1001">					<!-- 추후 수정 -->
                  <div class="task-info">
                    <div class="desc">Project2</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/indexprj1.do?prjno=P1002">					<!-- 추후 수정 -->
                  <div class="task-info">
                    <div class="desc">Project3</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/indexprj1.do?prjno=P1003">					<!-- 추후 수정 -->
                  <div class="task-info">
                    <div class="desc">Project4</div>
                  </div>
                </a>
              </li>
            </ul>
          </li>
          <!-- settings end -->
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="${path }/logout.do">Logout</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="${path}/profile.do"><img src="${path}/z01_HRFileupload/${emp.eimage}" width=160></a></p>
          <h5 class="centered">${emp.ename}</h5>
          <li class="mt">
            <a href="${path}/indexprjWhole.do">
              <i class="fa fa-dashboard"></i>
              <span>대시보드</span>
            </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>통합 프로젝트</span>
            </a>
            <ul class="sub">
              <li><a href="${path}/prjList.do">통합 프로젝트 관리</a></li>
              <li><a href="${path}/prjInsertForm.do">프로젝트 등록</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="${path}/prjSchdList.do ">
              <i class="fa fa-calendar-o"></i>
              <span>일정관리</span>
            </a>
          </li>
          <li>
            <a href="${path}/cosPrjList.do">
              <i class="fa fa-money"></i>
              <span>재정관리</span>
            </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-users"></i>
              <span>인적자원관리</span>
            </a>
            <ul class="sub">
              <li><a href="${path}/empList.do">전체 사원 관리</a></li>
              <li><a href="${path}/prjEmpManage.do">프로젝트 사원 관리</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="${path}/prjlist.do">
              <i class="fa fa-suitcase"></i>
              <span>품질관리</span>
            </a>
          </li>
          <li>
            <a href="${path}/mailForm.do">
              <i class="fa fa-envelope"></i>
              <span>메일</span>
            </a>
          </li>
          <li>
            <a href="${path}/chat.do">
              <i class="fa fa-comments-o"></i>
              <span>채팅</span>
              </a>
          </li>
          <li>
            <a href="${path}/boardList.do">
              <i class="fa fa-edit"></i>
              <span>회의록</span>
            </a>
          </li>
          <li>
            <a href="${path}/introduce.do">
              <i class="fa fa-info-circle"></i>
              <span>AEAP소개</span>
            </a>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
	<div class="border-head p-2">
              <h3> 칸반보드</h3>
            </div>
					<div class="kanban">
	
	</div>
	<script src="${path}/a01_Yeji//js/main.js" type="module"></script>
			</section>
		</section>

		<!--main content end-->  
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">
				<p>
					&copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
				</p>
				<div class="credits">
					<!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
					Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
				</div>
				<a href="index.html#" class="go-top"> <i class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
 




</body>

</html>

