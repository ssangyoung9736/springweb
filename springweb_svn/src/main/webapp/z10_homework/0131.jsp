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
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
	td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
2023-01-31
[1단계:개념] 1. 부트스트랩의 모달창 로딩 방식을 예제를 통해 기술하세요 
[1단계:확인]*2. 사원 아이디로 사원 정보를 json데이터로 로딩을 위한 
				DB및 controller단 get방식 처리를 하세요
				1) sql  
				2) vo 확인
				3) mybatis공통 vo
				4) dao 
				5) mapper
				6) service
				========
				7) controller
[1단계:확인]*3. salgrade 테이블을 ajax로 로딩된 데이터를 출력하고, 
	행별 등급을 클릭시, 등급상세화면이 ajax로 로딩되게 처리하세요.
	sql
		select * from salgrade	
		select * from salgrade where grade = #{grade}
	vo Salgrade
	공통my salgrade, SalMapper.xml
	dao	
		public List<Salgrade> getSalList();
		public Salgrade getSalgrade(int grade);
	mapper
		<select id="getSalList" resultType="salgrade">
			select * from salgrade
		<select id="getSalgrade" parameterType="int"
				resultType="salgrade">
			select * from salgrade where grade = #{grade}
	service
	controller
		/salgradeInit.do
		/salgradeList.do
		/salgrade.do 			
	view  a05_salgradeList.jsp 			
		
		
		
			
			
	
	


[1단계:확인]*4. 부서 상세화면에서 ajax로 부서정보를 수정/삭제 처리하세요.
[1단계:개념] 5. vue의 개발환경을 위한 설정 방법을 기술하세요.
[1단계:확인]*6. vue의 MVVM패턴을 이용하여 모델로 선언한 name, age, loc를 통해서 화면에 이름 나이 사는 곳에 출력되게하세요.
		
		--%>	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>로그인</h2>
  <%--
  <h2 data-toggle="modal" data-target="#exampleModalCenter">
   --%>
</div>
<div class="container">
	<form id="frm01" class="form-inline"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input class="form-control mr-sm-2" placeholder="제목" />
	    <input class="form-control mr-sm-2" placeholder="내용" />
	    <button class="btn btn-info" type="submit">Search</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="10%">
   	<col width="50%">
   	<col width="15%">
   	<col width="15%">
   	<col width="10%">
    <thead>
    
      <tr class="table-success text-center">
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회</th>
      </tr>
    </thead>	
    <tbody>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    </tbody>
	</table>    
    
</div>
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
		<form id="frm02" class="form"  method="post">
	     <div class="row">
	      <div class="col">
	        <input type="text" class="form-control" placeholder="사원명 입력" name="ename">
	      </div>
	      <div class="col">
	        <input type="text" class="form-control" placeholder="직책명 입력" name="job">
	      </div>
	     </div>
	    </form> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>