<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%-- <c:if test="${!empty param.id }">
	<script type="text/javascript">
		var id = ${param.id}
		$(document).ready(function() {
		alert(${param.id});
			$(#_id).val('id');
	    });
	</script>
</c:if>
 --%>
<script>
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
	var id = getParameterByName('id');
	var pw = getParameterByName('pw');
	<c:if test="${!empty param.id}">
		alert('아이디는 '+id+'입니다.');
	</c:if>
	<c:if test="${!empty param.pw}">
		alert('비밀번호는 '+pw+'입니다.');
	</c:if>
</script>

<form class="form-login" action="loginAfter.do" method="post">
	<h2 class="form-login-heading">sign in now</h2>
	<div class="login-wrap">
		<input type="text" id="_id" name="id" class="form-control"
			placeholder="User ID" autofocus> <br> <input
			type="password" name="pw" class="form-control" placeholder="Password">
		<!-- <label class="checkbox"> <span class="pull-right"> <a
				data-toggle="modal" href="login.html#myModal"> Forgot Password?</a>

		</span>
		</label> -->
		<label class="checkbox">
		                <span class="pull-right" style="text-align:right">
		              		  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
		                	<a href="findId.do"> Forgot Id? </a> <br>
		                    <a href="findPw.do"> Forgot Pw? </a>
		
		                </span>
		            </label>
		<button class="btn btn-theme btn-block" type="submit">
			<i class="fa fa-lock"></i> SIGN IN
		</button>
		<hr>

		<!-- <div class="login-social-link centered">
			<p>or you can sign in via your social network</p>
			<button class="btn btn-facebook" type="submit">
				<i class="fa fa-facebook"></i> Facebook
			</button>
			<button class="btn btn-twitter" type="submit">
				<i class="fa fa-twitter"></i> Twitter
			</button>
		</div> -->
		<div class="registration">
			Don't have an account yet?<br /> <a class="" href="regi.do">
				Create an account </a>
		</div>

	</div>

	<!-- Modal -->
	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
		tabindex="-1" id="myModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Forgot Password ?</h4>
				</div>
				<div class="modal-body">
					<p>Enter your e-mail address below to reset your password.</p>
					<input type="text" placeholder="Email" autocomplete="off"
						class="form-control placeholder-no-fix">

				</div>
				<div class="modal-footer">
					<button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
					<button class="btn btn-theme" type="button">Submit</button>
				</div>
			</div>
		</div>
	</div>
	<!-- modal -->

</form>


<!-- js placed at the end of the document so the pages load faster -->
<script src="resources/bootstrap/js/jquery.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>

<!--BACKSTRETCH-->
<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
<script type="text/javascript"
	src="resources/bootstrap/js/jquery.backstretch.min.js"></script>
<script>
	$.backstretch("resources/bootstrap/img/background.png", {
		speed : 500
	});
</script>
