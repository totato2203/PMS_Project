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
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href='${path}/a00_Common/a00_com/lib/main.css' rel='stylesheet' />
<script src='${path}/a00_Common/a00_com/lib/main.js'></script>
<link rel="stylesheet" href="${path}/a00_Common/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_Common/a00_com/jquery-ui.css" >
<style>
	td{text-align:center;}
	body {
	    margin: 40px 10px;
	    padding: 0;
	    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	    font-size: 14px;
	}
	#calendar {
	   max-width: 1100px;
	   margin: 0 auto;
	}
</style>
<script src="${path}/a00_Common/a00_com/jquery.min.js"></script>
<script src="${path}/a00_Common/a00_com/popper.min.js"></script>
<script src="${path}/a00_Common/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_Common/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">



document.addEventListener('DOMContentLoaded', function() {
	
	// 초기 화면 로딩 날짜 오늘 날짜로 설정
	var toDay = new Date()
	var date = toDay.toISOString().split("T")[0]
	console.log(date)
	
	
    var calendarEl = document.getElementById('calendar');
	
    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      initialDate: date,
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
    	  $("#regBtn").show()
    	  $("#uptBtn").hide()
    	  $("#delBtn").hide()
    	  
    	  $("#exampleModalLongTitle").text("일정등록");
    	  $("#frm01")[0].reset(); // 기존 등록된 데이터 삭제 처리.
    	  $("#modalBox").click(); // 팝업창 로딩:이벤트를 하지 않더라도 코드에 의해 강제 실행 처리.
    	  console.log("#fullcalendar 데이터#")
    	  console.log(arg)
    	  console.log(arg.start)
    	  console.log(arg.end)
    	  console.log(arg.color) // 입력으로 넣을 예정
    	  console.log(arg.textColor) // 입력으로 넣을 예정
    	  console.log(arg.allDay)
    	  // arg.start.toISOString() : GMT 기준 시간으로 나온다.
    	  $("#frm01 [name=start]").val(arg.start.toISOString())
    	  $("#frm01 [name=end]").val(arg.end.toISOString())
    	  $("#frm01 [name=allDay]").val(""+arg.allDay)
    	  // 내용은 추가적으로 넣을 예정..
      },
      // 있는 데이터를 클릭시, (상세 내용을 보고 수정/삭제..)
      eventClick: function(arg) {
    	  $("#regBtn").hide()
    	  $("#uptBtn").show()
    	  $("#delBtn").show()
    	  $("#exampleModalLongTitle").text("일정상세");
    	  $("#modalBox").click(); // 모달창 로딩.. 
    	  formData(arg.event)
    	  

      },
      eventDrop:function(info){
    	  // 일정을 클릭해서 드랍처리 시, 날짜 변경
    	  formData(info.event)
   	  	  $("#frm01").attr("action","${path}/calUpdate.do");
   	  	  $("#frm01").submit();   	  
      },
      eventResize:function(info){
    	  // 시간일정을 늘리거나 줄일때..
    	  formData(info.event)
   	  	  $("#frm01").attr("action","${path}/calUpdate.do");
   	  	  $("#frm01").submit();
      },
      
      
      editable: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: function(info, successCallback, failureCallback){
    	  // http://localhost:7080/springweb/calList.do callist
    	  $.ajax({
    		  type:"post",
    		  url:"${path}/calList.do?prjNo=${param.prjNo}",
    		  dataType:"json",
    		  success:function(data){
    			  console.log(data.callist)
    			  successCallback(data.callist)
    		  },
    		  error:function(err){
    			  console.log(err)
    		  }
    		  
    	  });
    	  
      }
    });

    calendar.render();

    
    
    
  });
  function formData(event){
 	  $("#frm01 [name=id]").val(event.id)
 	  $("#frm01 [name=title]").val(event.title)
 	  $("#frm01 [name=start]").val(event.start.toISOString())
 	  if(event.end!=null){
	  	$("#frm01 [name=end]").val(event.end.toISOString())
 	  }else{
 		 $("#frm01 [name=end]").val(event.start.toISOString())  
 	  }
	  $("#frm01 [name=backgroundColor]").val(event.backgroundColor)
	  $("#frm01 [name=textColor]").val(event.textColor)
	  $("#frm01 [name=allDay]").val(""+event.allDay)   	  
	  $("#frm01 [name=content]").val(event.extendedProps.content)  	  
  }
</script>
</head>

<body>
<div id='calendar'></div>
<h2 data-toggle="modal" id="modalBox"  
	data-target="#exampleModalCenter" style="display:none;">모달창 로딩</h2>

<!-- 
특정한 data-target="#exampleModalCenter"로 된 DOM을 클릭시,
모달창이 로딩..



모달 창 로딩.. -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">타이틀</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<form id="frm01" class="form"  method="post">
			<input type="hidden" name="id" value="0"/>
	     <div class="row">
	      <div class="col">
	        <input type="text" class="form-control" placeholder="제목 입력" 
	        	 data-bs-toggle="tooltip"  title="제목 입력" name="title">
	      </div>
	      <div class="col">
	        <select name="allDay" class="form-control"   data-bs-toggle="tooltip"  title="종일여부">
	        	<option value="false">시간</option>
	        	<option value="true">종일</option>
	        </select>
	      </div>      	      
	     </div>
	     <div class="row">
	      <div class="col">
	        <input type="text" class="form-control"  data-bs-toggle="tooltip"  title="시작일" name="start">
	      </div>
	      <div class="col">
	        <input type="text" class="form-control"  data-bs-toggle="tooltip"  title="종료일" name="end">
	      </div>
	     </div>
	     <div class="row">
	      <div class="col"> 
	        <input type="color" class="form-control"  data-bs-toggle="tooltip"  title="배경색상" 
	        	value="#0099cc" name="backgroundColor">
	      </div>
	      <div class="col">
	        <input type="color" class="form-control"   data-bs-toggle="tooltip"  title="글자색상" 
	        	value="#ccffff" name="textColor">
	      </div>
	     </div>	   
	     <div class="row">
	      <div class="col">
	        <textarea name="content" rows="7"  class="form-control" 
	        	 data-bs-toggle="tooltip"  placeholder="내용 입력"  title="내용" ></textarea>
	      </div>
	     </div>	 	     
	         
	    </form> 
      </div>
      <div class="modal-footer"> 
        <button type="button" id="regBtn" class="btn btn-primary">일정등록</button>
        <button type="button" id="uptBtn" class="btn btn-info">일정수정</button>
        <button type="button" id="delBtn" class="btn btn-danger">일정삭제</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
      <script type="text/javascript">
      	$("#regBtn").click(function(){
      		if(confirm("등록하시겠습니까?")){
      			$("#frm01").attr("action","${path}/calInsert.do");
      			$("#frm01").submit();
      		}
      	});
      	$("#uptBtn").click(function(){ // calUpdate.do
      		if(confirm("수정하시겠습니까?")){
      			$("#frm01").attr("action","${path}/calUpdate.do");
      			$("#frm01").submit();
      		}
      	});
      	$("#delBtn").click(function(){
      		if(confirm("삭제하시겠습니까?")){
      			$("#frm01").attr("action","${path}/calDelete.do");
      			$("#frm01").submit();
      		}
      	});
      	
      </script>
    </div>
  </div>
</div>
</body>
</html>