<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript">
	function deleteCheck() {
		var input = confirm('정말 탈퇴하시겠습니까?');
		if (input == true) {
			alert('정상적으로 탈퇴되었습니다.');
			location.href="delete.do?id=${sessionScope.loginInfo.id}";
		} else
			location.href="mypage.do";
	}

	function update(id) {
		
/* 		var ff=document.getElementById("_fname");
		ff.id.value=id;
		alert(ff.id.value+"------->>>>>>");
		ff.submit(); */
		location.href="update_info.do?id="+id;
	}
</script>

<!-- 
   <form id='_fname' action="update_info.do" method='post'>
   <input type="text" name='id' id='_id'>
   </form> -->



<!-- 	<form class="form-horizontal style-form" method="post"> -->
		<table class="table table-striped table-advance table-hover">
			<h2>
				<i class="fa fa-angle-right"></i> ${sessionScope.loginInfo.name } 님의 정보
			</h2>
			<hr>
			<thead>
				<tr>
					<th>ID</th>
					<th>이름</th>
					<th>학과</th>
					<th>학번</th>
					<th>학년</th>
					<th>전화번호</th>
					<th>성별</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${sessionScope.loginInfo.id}</td>
					<td>${sessionScope.loginInfo.name}</td>
					<td>${sessionScope.loginInfo.dept}</td>
					<td>${sessionScope.loginInfo.studentId}</td>
					<td>${sessionScope.loginInfo.grade}</td>
					<td>${sessionScope.loginInfo.phone}</td>
					<td>${sessionScope.loginInfo.gender}</td>
					<td>
						<a href="update_info.do" ><button class="btn btn-primary btn-xs">
							<i class="fa fa-pencil"></i>
						</button></a>
						<button class="btn btn-danger btn-xs" onClick="deleteCheck()">
							<i class="fa fa-trash-o "></i>
						</button>
					</td>
				</tr>

			</tbody>
		</table>
<!-- </form> -->
