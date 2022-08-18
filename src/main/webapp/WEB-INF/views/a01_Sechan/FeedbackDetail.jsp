<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--

<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
 --%>
<html lang="en">
<head>
  <style>
  .find-btn{
	text-align: right;
}
.find-btn1{
	display :inline-block;

}
select {
  box-sizing: border-box;
  width: 100px;
  padding: 4px;
  font-size: 14px;
  border-radius: 6px;
}

option {
  padding: 4px;
  font-size: 14px;
  color: #fff;
  background: #272822;
}
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="../Dashio/img/favicon.png" rel="icon">
  <link href="../Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="${path}/Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="${path}/Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-timepicker/compiled/timepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-datetimepicker/datertimepicker.css" />
  <!-- Custom styles for this template -->
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">
<script src="${path}/a00_Common/a00_com/jquery.min.js"></script>
<script src="${path}/a00_Common/a00_com/popper.min.js"></script>
<script src="${path}/a00_Common/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>  
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
      <a href="index.html" class="logo"><b>DASH<span>IO</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-tasks"></i>
              <span class="badge bg-theme">4</span>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 4 pending tasks</p>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Dashio Admin Panel</div>
                    <div class="percent">40%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                      <span class="sr-only">40% Complete (success)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Database Update</div>
                    <div class="percent">60%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                      <span class="sr-only">60% Complete (warning)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Product Development</div>
                    <div class="percent">80%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                      <span class="sr-only">80% Complete</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Payments Sent</div>
                    <div class="percent">70%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                      <span class="sr-only">70% Complete (Important)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li class="external">
                <a href="#">See All Tasks</a>
              </li>
            </ul>
          </li>
          <!-- settings end -->
          <!-- inbox dropdown start-->
          <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-envelope-o"></i>
              <span class="badge bg-theme">5</span>
              </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 5 new messages</p>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-zac.jpg"></span>
                  <span class="subject">
                  <span class="from">Zac Snider</span>
                  <span class="time">Just now</span>
                  </span>
                  <span class="message">
                  Hi mate, how is everything?
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-divya.jpg"></span>
                  <span class="subject">
                  <span class="from">Divya Manian</span>
                  <span class="time">40 mins.</span>
                  </span>
                  <span class="message">
                  Hi, I need your help with this.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-danro.jpg"></span>
                  <span class="subject">
                  <span class="from">Dan Rogers</span>
                  <span class="time">2 hrs.</span>
                  </span>
                  <span class="message">
                  Love your new Dashboard.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-sherman.jpg"></span>
                  <span class="subject">
                  <span class="from">Dj Sherman</span>
                  <span class="time">4 hrs.</span>
                  </span>
                  <span class="message">
                  Please, answer asap.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">See all messages
                  </a>
              </li>
            </ul>
          </li>
          <!-- inbox dropdown end -->
          <!-- notification dropdown start-->
          <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-bell-o"></i>
              <span class="badge bg-warning">7</span>
              </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-yellow"></div>
              <li>
                <p class="yellow">You have 7 new notifications</p>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span> Server Overloaded.
                  <span class="small italic">4 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-warning"><i class="fa fa-bell"></i></span> Memory #2 Not Responding.
                  <span class="small italic">30 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span> Disk Space Reached 85%.
                  <span class="small italic">2 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-success"><i class="fa fa-plus"></i></span> New User Registered.
                  <span class="small italic">3 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">See all notifications</a>
              </li>
            </ul>
          </li>
          <!-- notification dropdown end -->
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li>
            <a class="logout" href="login.html">Logout</a>
          </li>
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
          <p class="centered">
            <a href="profile.html"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a>
          </p>
          <h5 class="centered">Sam Soffes</h5>
          <li class="mt">
            <a href="index.html">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>UI Elements</span>
              </a>
            <ul class="sub">
              <li>
                <a href="general.html">General</a>
              </li>
              <li>
                <a href="buttons.html">Buttons</a>
              </li>
              <li>
                <a href="panels.html">Panels</a>
              </li>
              <li>
                <a href="font_awesome.html">Font Awesome</a>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-cogs"></i>
              <span>Components</span>
              </a>
            <ul class="sub">
              <li>
                <a href="grids.html">Grids</a>
              </li>
              <li>
                <a href="calendar.html">Calendar</a>
              </li>
              <li>
                <a href="gallery.html">Gallery</a>
              </li>
              <li>
                <a href="todo_list.html">Todo List</a>
              </li>
              <li>
                <a href="dropzone.html">Dropzone File Upload</a>
              </li>
              <li>
                <a href="inline_editor.html">Inline Editor</a>
              </li>
              <li>
                <a href="file_upload.html">Multiple File Upload</a>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-book"></i>
              <span>Extra Pages</span>
              </a>
            <ul class="sub">
              <li>
                <a href="blank.html">Blank Page</a>
              </li>
              <li>
                <a href="login.html">Login</a>
              </li>
              <li>
                <a href="lock_screen.html">Lock Screen</a>
              </li>
              <li>
                <a href="profile.html">Profile</a>
              </li>
              <li>
                <a href="invoice.html">Invoice</a>
              </li>
              <li>
                <a href="pricing_table.html">Pricing Table</a>
              </li>
              <li>
                <a href="faq.html">FAQ</a>
              </li>
              <li>
                <a href="404.html">404 Error</a>
              </li>
              <li>
                <a href="500.html">500 Error</a>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-tasks"></i>
              <span>Forms</span>
              </a>
            <ul class="sub">
              <li>
                <a href="form_component.html">Form Components</a>
              </li>
              <li>
                <a href="advanced_form_components.html">Advanced Components</a>
              </li>
              <li>
                <a href="form_validation.html">Form Validation</a>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-th"></i>
              <span>Data Tables</span>
              </a>
            <ul class="sub">
              <li class="active">
                <a href="basic_table.html">Basic Table</a>
              </li>
              <li>
                <a href="responsive_table.html">Responsive Table</a>
              </li>
              <li>
                <a href="advanced_table.html">Advanced Table</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="inbox.html">
              <i class="fa fa-envelope"></i>
              <span>Mail </span>
              <span class="label label-theme pull-right mail-info">2</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>Charts</span>
              </a>
            <ul class="sub">
              <li>
                <a href="morris.html">Morris</a>
              </li>
              <li>
                <a href="chartjs.html">Chartjs</a>
              </li>
              <li>
                <a href="flot_chart.html">Flot Charts</a>
              </li>
              <li>
                <a href="xchart.html">xChart</a>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-comments-o"></i>
              <span>Chat Room</span>
              </a>
            <ul class="sub">
              <li>
                <a href="lobby.html">Lobby</a>
              </li>
              <li>
                <a href="chat_room.html"> Chat Room</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="google_maps.html">
              <i class="fa fa-map-marker"></i>
              <span>Google Maps </span>
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
        <h3><i class="fa fa-angle-right"></i>시정조치 상세페이지</h3><br>
        <div class="row">
          
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
              <table class="table table-hover">
                <h4><i class="fa fa-angle-right"></i> 시정조치결과 테이블</h4>
                <hr>
                <thead>
                  <tr>
                    <th> </th>
                    <th>시정조치ID</th>
                    <th>시정조치명</th>
                    <th>검토계획명</th>
                    <th>시정조치기간</th>
                    
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td> </td>
                    <td>${fbplandetail.feedbackNo}</td>
                    <td>${fbplandetail.feedbackName}</td>
                    <td>${fbplandetail.rplanName}</td>
                    <td><fmt:formatDate value="${fbplandetail.fbStartDate}"/> ~ <fmt:formatDate value="${fbplandetail.fbEndDate}"/></td>
                   
                  
                </tbody>
              </table>
              
               <table class="table table-hover">
                <!--<th>PM명</th>
                    <th>설계단계</th>
                    <th>클라이언트요구사항</th>
                    <th>검토사유</th>
                    <th>기타특이사항</th>  -->
                <hr>
                <thead>
                  <tr>
                    <th> </th>
                    <th>PM명</th>
                    <th>설계단계</th>
                    <th>시정조치사항</th>
                    <th>기타특이사항</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td> </td>
                    <td> ${fbplandetail.pmname}</td>
                    <td>${fbplandetail.fbStep}</td>
                    <td>${fbplandetail.feedbackItem}</td>
                    <td>${fbplandetail.fbNote}</td>
                  </tr>
                 
                </tbody>
              </table>
            </div>
            <br>
          </div>
          <!-- /col-md-12 -->
          <form id="frm01" action="${path}/deleteRplan.do" class="form"  method="post" >  
          <input type="hidden" name="rplanno" value="${param.rplanno }"/>
          <div class="find-btn">
        
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">수정</button>
          <button onclick="deleteProc()" class="btn btn-warning find-btn1">삭제  </button>
          <button type="button" class="btn btn-danger find-btn1">취소  </button>
          </div>
         </form>
        </div>
         <script type="text/javascript">
        	function deleteProc(){
        		if(confirm("검토계획을 삭제하시겠습니까?")){
        			 $("form").attr("action","${path}/deleteRplan.do"); 
        			$("form").submit();
        		}
        	}
        var proc ="${proc}"
        	if(proc=="del"){
        		alert("삭제성공\n리스트화면으로 이동")
        			location.href="${path}/rplanlist.do";
        		
        	}
        
        </script>
        <!-- row -->
        
        <!-- /row -->
      </section>
    </section>
    <!-- /MAIN CONTENT -->
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
        <a href="basic_table.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>
  <script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
  <script src="${path}/Dashio/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="${path}/Dashio/lib/common-scripts.js"></script>
  <!--script for this page-->
   <form id="frm02" action="${path}/updateRplan.do" class="form"  method="post" >
  <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
      	
        <h4 class="modal-title" id="exampleModalLongTitle" >시정조치결과 수정</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	 
      	<input type="hidden" name="rplanno1" value="${param.rplanno }"/>
        <div class="row">
         <div class="col">
           <h4>검토계획명 입력</h4>
           <input type="text" class="form-control" placeholder="검토계획명 입력" name="uptrname" value="${rplandetail.rplanname}">
         </div><br>
         <div class="col">
           <h4>요구사항명 입력</h4>
           <input type="text" class="form-control" placeholder="요구사항 입력" name="uptrequire" value="${rplandetail.clientrequire}">
         </div><br>
          <div class="col">
           <h4>설계단계 입력</h4>
           <input type="text" class="form-control" placeholder="설계단계 입력" name="uptrstep" value="${rplandetail.rplanstep}">
         </div><br>
          <div class="col">
           <h4>기타특이사항 입력</h4>
           <input type="text" class="form-control" placeholder="기타특이사항 입력" name="uptsnote" value="${rplandetail.specialnote}">
         </div><br>
         <div class="col">
           <h4> 품질점수 조정</h4>
           <select name="select">
 			 <option value="none" selected>일정관리</option>
  			 <option value="option 1">+5</option>
 			 <option value="option 2">+10</option>
 			 <option value="option 3">-5</option>
 			 <option value="option 4">-10</option>
		   </select>
		   <select name="select">
 			 <option value="none" selected>인적자원</option>
  			 <option value="option 1">+5</option>
 			 <option value="option 2">+10</option>
 			 <option value="option 3">-5</option>
 			 <option value="option 4">-10</option>
		   </select>
		   <select name="select">
 			 <option value="none" selected>비용관리</option>
  			<option value="option 1">+5</option>
 			 <option value="option 2">+10</option>
 			 <option value="option 3">-5</option>
 			 <option value="option 4">-10</option>
		   </select>
		   <select name="select">
 			 <option value="none" selected>의사소통관리</option>
  			<option value="option 1">+5</option>
 			 <option value="option 2">+10</option>
 			 <option value="option 3">-5</option>
 			 <option value="option 4">-10</option>
		   </select>
              </div>
           </div><br>
         
         
         <%-- <div class="col">
           <h4>비고 입력</h4>
           <input type="text" class="form-control" placeholder="비고 입력"  value="${rplandetail.specialnote}">
         </div><br> --%>
         
        
        </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" onclick="updateProc()" class="btn btn-primary">Save changes</button>
      </div>  
      
      </div>
      
      <script type="text/javascript">
      function updateProc(){
    		if(confirm("수정하시겠습니까?")){
    			// 유효성 check
    			$("form").attr("action","${path}/updateBoard.do");
    			$("form").submit();
    		}
    	}
      var proc ="${proc}"
    		if(proc=="upt"){
    			if(confirm("수정성공\n조회리스트화면으로 이동하시겠습니까?"))
    				location.href="${path}/boardList.do";
    			
    		}
      </script>
    </div>
  </div>
</div>           
</form>            
           

</body>

</html>