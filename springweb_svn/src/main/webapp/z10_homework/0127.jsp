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
2023-01-26
[1단계:개념] 1. resultMap을 사용하는 경우와 설정형식을 기술하세요
[1단계:확인] 2. select id user, pass password99, auth authority from member sql을 resultmap을 이용해서  DB 처리를하세요
[1단계:확인] 3. 부서번호로 조회와 부서정보를 등록하는 처리를 parameterType 속성을 이용하여 처리하세요
[1단계:확인] 4. 회원정보(member)를 삭제하는 처리를 하세요
[3단계:확인] 5. product, member, buyinfo 테이블의 조인관계를 설정하여  BuyProduct VO에 Product, Member 객체를 포함하여 
				resultMap을 활용한 DB처리를 하세요
sql				
SELECT p.name pname, price,  id, m.name, pass, auth, b.bcnt
FROM product111 p, member111 m, buyinfo111 b
WHERE p.pid = b.pid and m.mid=b.mid;

vo Member(id, pass, name, auth)
   Product(name, price, bcnt) ==> 
   BuyInfo  Member member; Product product;
공통mybatis 
	member, product, buyinfo	   
dao 
	public List<BuyInfo> getBuyInfo();
mapper
	<resultMap id="buyRst" type="buyinfo">
		<association type="member">	
			<result column="id" property="id"/>
			<result column="pass" property="pass"/>			
			<result column="name" property="name"/>
			<result column="auth" property="auth"/>
		<association type="product">	
			<result column="pname" property="name"/>
			<result column="price" property="price"/>
			<result column="bcnt" property="bcnt"/>
main()
	List<BuyInfo> blist = dao.getBuyInfo();




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
2023-01-27
[1단계:개념] 1. db가 연결된 스프링 MVC패턴의 개발 순서를 기술하세요.
[1단계:확인] 2. 회원관리 화면을 처리하세요(member테이블 활용하여 리스트)
[1단계:확인] 3. 회원관리 화면을 처리하세요(member테이블 활용하여 단일 데이터 조회)
[1단계:확인]*4. 회원관리 화면을 처리하세요(member테이블 활용하여 수정)
[1단계:확인]*5. 회원관리 화면을 처리하세요(member테이블 활용하여 삭제)
[1단계:개념] 6. 모델어트리뷰트로 콤보박스를 사용하는 경우 처리하는 순서를 기술하세요.
[1단계:확인]*7. 회원테이블(member)에 권한을 콤보박스를 사용하여 검색조건으로 추가하여 처리하세요.
sql
	SELECT DISTINCT auth
	FROM member200	

	select * from member200
	where id like '%'||#{id}||'%'
	and name like '%'||#{name}||'%'
	<if test="auth!=''">
	and auth = #{auth}
	</if>
	select * from member200
	where id = #{id}	
	update member
		set name=#{name},
			pass=#{pass},
			point=#{point},
			auth=#{auth}
		where id = #{id}
	delete member 
	where id = #{id}
vo Member
	springweb.z01_vo.Member 
공통mybatis member, MemberMapper.xml
dao  
MemberDao
public List<String> getAuthCom();	
public List<Member> getMemberList(Member sch);	
public Member getMember(String id);	
public void uptMember(Member upt);	
public void delMember(String id);
mapper
<select id="getAuthCom" resultType="string">
	SELECT DISTINCT auth
	FROM member200
<select id="getMemberList" parameteType="member"
	 resultType="member">
	select * from member200
	where id like '%'||#{id}||'%'
	and name like '%'||#{name}||'%'
	<if test="auth!=''">
	and auth = #{auth}
	</if>
		 
<select id="getMember" parameteType="string" 
	resultType="member>
	select * from member200
	where id = #{id}	

<update id="uptMember"  parameteType="member">
	update member
		set name=#{name},
			pass=#{pass},
			point=#{point},
			auth=#{auth}
		where id = #{id}
		
<delete id="delMember" parameteType="string">
	delete member 
	where id = #{id}
		
	
	
	
	
	
	



		
		--%>	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2 data-toggle="modal" data-target="#exampleModalCenter">타이틀</h2>

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