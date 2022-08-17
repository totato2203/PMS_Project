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


 --%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="${path}/Dashio/img/favicon.png" rel="icon">
  <link href="${path}/Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="${path}/Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="${path}/Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-timepicker/compiled/timepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-datetimepicker/css/datetimepicker.css" />
  <!-- Custom styles for this template -->
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">  
  <link rel="stylesheet" href="${path}/a00_Common/a01_css/empInsert.css">
  <script src="${path}/a00_Common/a00_com/jquery-3.6.0.js"></script>
  <script src="${path}/a00_Common/a00_com/jquery.min.js"></script>
  <script src="${path}/a00_Common/a00_com/jquery-ui.js"></script>
  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>	
	});
	function goDetail(empno){
		location.href="${path}/emp.do?method=detail&empno="+empno;
	}
</script>
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
                  <span class="photo"><img alt="avatar" src=""></span>
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
                  <span class="photo"><img alt="avatar" src=""></span>
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
                  <span class="photo"><img alt="avatar" src=""></span>
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
                  <span class="photo"><img alt="avatar" src=""></span>
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
                <a href="index.html#">See all messages</a>
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
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Server Overloaded.
                  <span class="small italic">4 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-warning"><i class="fa fa-bell"></i></span>
                  Memory #2 Not Responding.
                  <span class="small italic">30 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Disk Space Reached 85%.
                  <span class="small italic">2 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-success"><i class="fa fa-plus"></i></span>
                  New User Registered.
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
          <li><a class="logout" href="login.html">Logout</a></li>
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
          <p class="centered"><a href="profile.html"><img src="" class="img-circle" width="80"></a></p>
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
              <li><a href="general.html">General</a></li>
              <li><a href="buttons.html">Buttons</a></li>
              <li><a href="panels.html">Panels</a></li>
              <li><a href="font_awesome.html">Font Awesome</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-cogs"></i>
              <span>Components</span>
              </a>
            <ul class="sub">
              <li><a href="grids.html">Grids</a></li>
              <li><a href="calendar.html">Calendar</a></li>
              <li><a href="gallery.html">Gallery</a></li>
              <li><a href="todo_list.html">Todo List</a></li>
              <li><a href="dropzone.html">Dropzone File Upload</a></li>
              <li><a href="inline_editor.html">Inline Editor</a></li>
              <li><a href="file_upload.html">Multiple File Upload</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-book"></i>
              <span>Extra Pages</span>
              </a>
            <ul class="sub">
              <li><a href="blank.html">Blank Page</a></li>
              <li><a href="login.html">Login</a></li>
              <li><a href="lock_screen.html">Lock Screen</a></li>
              <li><a href="profile.html">Profile</a></li>
              <li><a href="invoice.html">Invoice</a></li>
              <li><a href="pricing_table.html">Pricing Table</a></li>
              <li><a href="faq.html">FAQ</a></li>
              <li><a href="404.html">404 Error</a></li>
              <li><a href="500.html">500 Error</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-tasks"></i>
              <span>Forms</span>
              </a>
            <ul class="sub">
              <li><a href="form_component.html">Form Components</a></li>
              <li class="active"><a href="advanced_form_components.html">Advanced Components</a></li>
              <li><a href="form_validation.html">Form Validation</a></li>
              <li><a href="contactform.html">Contact Form</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-th"></i>
              <span>Data Tables</span>
              </a>
            <ul class="sub">
              <li><a href="basic_table.html">Basic Table</a></li>
              <li><a href="responsive_table.html">Responsive Table</a></li>
              <li><a href="advanced_table.html">Advanced Table</a></li>
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
              <li><a href="morris.html">Morris</a></li>
              <li><a href="chartjs.html">Chartjs</a></li>
              <li><a href="flot_chart.html">Flot Charts</a></li>
              <li><a href="xchart.html">xChart</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-comments-o"></i>
              <span>Chat Room</span>
              </a>
            <ul class="sub">
              <li><a href="lobby.html">Lobby</a></li>
              <li><a href="chat_room.html"> Chat Room</a></li>
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
      <h3><i class="fa fa-angle-right"></i>인적자원 > 인적자원 관리 > 사원 등록</h3>
      <!--ADVANCED FILE INPUT-->
      <div class="row mt" id="row mt">
		          <div class="col-lg-12">
		            <div class="form-panel">
		              
      
		<!-- FORM VALIDATION -->
        <div class="row mt">
          <div class="col-lg-12">
           
            <!-- /tab-pane -->
                  <div id="edit" class="tab-pane">
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                        <h4 class="mb">Personal Information</h4>
                        <form class="form-horizontal" id="eform" action="${path}/empInsert.do" method="post">
                        <div class="form-group last">		                  
		                  
		                  <!--  
		                  <div class="form-group">
                            <label class="col-lg-2 control-label">사원사진</label>
                            <div class="col-md-9">
		                    <div class="fileupload fileupload-new" data-provides="fileupload">
		                      <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
		                        <img src="" alt="" />
		                      </div>
		                      <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
		                      <div>
		                        <span class="btn btn-theme02 btn-file">
		                          <span class="fileupload-new"><i class="fa fa-paperclip"></i>Select Image</span>
		                        <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
		                        <input type="file" class="default" />
		                        </span>
		                        <a href="advanced_form_components.html#" class="btn btn-theme04 fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash-o"></i> Remove</a>
		                      </div>
		                    </div>
		                    <span class="label label-info">NOTE!</span>
		                    <span>
		                      Attached image thumbnail is
		                      supported in Latest Firefox, Chrome, Opera,
		                      Safari and Internet Explorer 10 only
		                      </span>
		                  </div>
                          </div>
		                  -->
                          <div class="form-group">
                            <label class="col-lg-2 control-label">파일</label>
                            <div class="col-lg-6">
                              <input type="file" id="exampleInputFile" class="file-pos"/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">사원번호*</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="사원번호를 입력하세요" name="empno" id="empno" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">id*</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="사원명을 입력하세요" name="id" id="id" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">pw*</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="사원명을 입력하세요" name="pw" id="c-name" class="form-control" value=""/> 
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">사원명*</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="사원명을 입력하세요" name="ename" id="c-name" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">사진</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="사원명을 입력하세요" name="eimage" id="c-name" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">입사일*</label>
                            <div class="col-lg-6">
                              <input type="date" placeholder="입사일을 입력하세요" class="form-control"  
								/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">직책*</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="직책을 입력하세요" name="job" id="country" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">관리자번호</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="권한을 입력하세요" name="mgr" id="country" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">생년월일*</label>
                            <div class="col-lg-6">
                              <input type="date" placeholder="생년월일을 입력하세요" class="form-control" 
								/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">연봉</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="연봉을 입력하세요" name="sal" id="country" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">핸드폰번호*</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="전화번호를 입력하세요" name="phoneNum" id="cell" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">주소*</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="주소를 입력하세요" name="address" id="addr1" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">부서번호</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="부서번호를 입력하세요" name="deptno" id="country" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">성별</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="성별을 입력하세요" name="gender" id="country" class="form-control" value=""/>
                            </div>
                          </div>      
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Email</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="이메일을 입력하세요" name="email" id="email" class="form-control" value=""/>
                            </div>
                          </div>
                          
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label">권한</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="권한을 입력하세요" name="auth" id="country" class="form-control" value=""/>
                            </div>
                          </div>
                          
                                                                                            
                          <div class="form-group">
                            <label class="col-lg-2 control-label">기타사항</label>
                            <div class="col-lg-10">
                              <textarea rows="5" cols="15" class="form-control" id="" name=""></textarea>
                            </div>
                          </div>                                                                         
                          <h4 class="mb">Contact Information</h4>
                          
                          
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label">기타사항</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder=" " name="description" id="description" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button class="btn btn-theme" type="button" onclick="insertProc()">등록</button>
                              <button class="btn btn-theme03" type="button" onclick="goMain()">메인화면</button>
                            </div>
                          </div>                                                   
                        </form>
                      </div>
                
                      <!-- /col-lg-8 -->
                    </div>
                    <!-- /row -->
                  </div>
                  <!-- /tab-pane -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        
		             
		            </div>
		            <!-- /form-panel -->
		          </div>
		          <!-- /col-lg-12 -->
		        </div>
		        

        <!-- row -->
        
        <!-- row -->
      </section>
      <!-- /wrapper -->
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
        <a href="advanced_form_components.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script type="text/javascript">
  var isInsert = "${isInsert}"
	  if(isInsert=="Y"){
		  if(!confirm("등록 성공했습니다\n계속 등록 하시겠습니까?")){
			  // 취소 입력시 조회 화면 이동
			  location.href="${path}/empList.do"
		  } else {
			  location.href="${path}/empInsert.do"
		  }
	  }
  
  function goMain(){
	  location.href="${path}/empList.do";
  }
  
  function insertProc(){
	  if(confirm("등록하시겠습니까?")){
		  var enameVal = $("[name=ename]").val();
		  if(enameVal == ""){
			  alert("사원명을 등록하세요");
			  $("[name=ename]").focus();
			  return;
		  }
		  var empnoVal = $("[name=empno]").val();
		  if(empnoVal == ""){
			  alert("사원번호를 등록하세요");
			  $("[name=empno]").focus();
			  return;
		  }
		  document.querySelector("form").submit();
	  }
  }
  

  </script>
  <script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>
  <script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
  <script src="${path}/Dashio/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="${path}/Dashio/lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="${path}/Dashio/lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/moment.min.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  <script src="${path}/Dashio/lib/advanced-form-components.js"></script>

</body>

</html>