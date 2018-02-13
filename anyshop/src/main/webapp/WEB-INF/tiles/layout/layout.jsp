<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>




<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Any Shop | Home</title>
    
    <!-- Font awesome -->
    <link href="resources/bootstrap/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="resources/bootstrap/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="resources/bootstrap/css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="resources/bootstrap/css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="resources/bootstrap/css/style.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="resources/bootstrap/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="resources/bootstrap/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- kakao javascript sdk -->
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    
 
  </head>
 
 
 
 <body>
 	<tiles:insertAttribute name="header" />

	<tiles:insertAttribute name="body" />
	
	
	  <!-- Login Modal -->->
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
         <span class="fa fa-shopping-cart"> AnyShop Login </span> 
          <form class="aa-login-form" action="loginAfter.do" method="post">
            <label for="">ID</label>
           	 	<input type="text" name="id">
            <label for="">Password</label> 
            	<input type="password" name="pw">
            	<input class="aa-browse-btn" type="submit" value="로그인">
          </form> 
         
            
            <!-- 카카오로그인 -->
             <a id="kakao-login-btn"></a>
		     <a href="http://developers.kakao.com/logout"></a>
		     <script type='text/javascript'>
		       //<![CDATA[
		         // 사용할 앱의 JavaScript 키를 설정해 주세요.
		         Kakao.init('27f13d749f0d64e89c166978e0841232');
		         // 카카오 로그인 버튼을 생성합니다.
		         Kakao.Auth.createLoginButton({
		           container: '#kakao-login-btn',
		           success: function(authObj) {
		        	// 로그인 성공시, API를 호출합니다.
		               Kakao.API.request({
		                 url: '/v1/user/me',
		                 success: function(res) {
		                   alert(JSON.stringify(res));
		                   alert(res.properties.nickname);

		                   loaction.href="kakaoLoginAfter.do?id=" +res.properties.nickname;
		                 },
		                 fail: function(error) {
		                   alert(JSON.stringify(error));
		                 }
		               });
		             },
		             fail: function(err) {
		               alert(JSON.stringify(err));
		             }
		         });
		       //]]>
		     </script>
            
            <label for="rememberme" class="rememberme"></label>
             <p class="aa-lost-password"><a href="findId.do">아이디를 잊어버리셨나요?</a></p>
            <p class="aa-lost-password"><a href="findPw.do">암호를 잊어버리셨나요?</a></p>
            
            <div class="aa-register-now">
             	아직 회원이 아니신가요?<a href="regi.do">회원가입</a>
            </div>
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div> 
</body>



</html>

