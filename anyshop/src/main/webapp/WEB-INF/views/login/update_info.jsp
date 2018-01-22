<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript">
	function back(){
		location.href="mypage.do";
	}
</script>

<div class="row mt">
	<div class="col-lg-12">
		<div class="form-panel">
			<h4 class="mb">
				<i class="fa fa-angle-right"></i>정보 수정
			</h4>
			<form class="form-horizontal style-form" method="post"
				action="updateAfter.do">
				<div class="form-group">
					<label class="col-sm-2 col-sm-2 control-label">ID</label>
					<div class="col-sm-10">
						<input type="text" name="id" class="form-control"
							value="${loginInfo.id}" readonly="readonly">
					</div>
				</div>

				<!-- <div class="form-group">
					<label class="col-sm-2 col-sm-2 control-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" placeholder="">
					</div>
				</div> -->

				<div class="form-group">
					<label class="col-sm-2 col-sm-2 control-label">이름</label>
					<div class="col-sm-10">
						<input type="text" name="name" class="form-control"
							value="${loginInfo.name}" readonly="readonly">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 col-sm-2 control-label">학과</label>
					<div class="col-sm-10">
						<input type="text" name="dept" class="form-control"
							value="${loginInfo.dept}">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 col-sm-2 control-label">학번</label>
					<div class="col-sm-10">
						<input type="text" name="studentId" class="form-control"
							value="${loginInfo.studentId}">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 col-sm-2 control-label">학년</label>
					<div class="col-sm-10">
						<input type="text" name="grade" class="form-control"
							value="${loginInfo.grade}">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 col-sm-2 control-label">전화번호</label>
					<div class="col-sm-10">
						<input type="text" name="phone" class="form-control"
							value="${loginInfo.phone}">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 col-sm-2 control-label">성별</label>
					<div class="col-sm-10">
						<input type="text" name="gender" class="form-control"
							value="${loginInfo.gender}">
					</div>
				</div>

				<input type="submit" class="btn btn-default" value="수정"> 
				<input type="button" class="btn btn-default" value="취소" onClick="back()"> 
				
			</form>
		</div>
	</div>
	<!-- col-lg-12-->
</div>
<!-- /row -->
