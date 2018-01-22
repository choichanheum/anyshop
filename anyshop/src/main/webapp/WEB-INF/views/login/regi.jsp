<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>sign up page</title>

    <!-- Bootstrap -->
    <link href="resources/bootstrap/regicss/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="resources/bootstrap/regicss/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="resources/bootstrap/regicss/style.css" media="screen" title="no title" charset="utf-8">

    <!-- HTML5 shim and Respond.regijs for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.regijs doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.regijs"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.regijs"></script>
    <![endif]-->
    
 <script type="text/javascript">

	function idCheck() {
	    
	    var id = $('#_id').val();
	    alert(id);
	 
	     if( !id ) {
	        alert("아이디를 입력하지 않았습니다.");
	        return false;
	        
	     } else if( (id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z") ) { 
	        $('#checkMessage').css('color','brown');
	        $('#checkMessage').html('한글 및 특수 문자는 아이디로 사용하실 수 없습니다.');     
	        return false;
	        
	     } else if (id.length < 4) {
	   		  $('#checkMessage').css('color','orange');
	   		  $('#checkMessage').html('아이디 길이는 4자 이상으로 입력해주세요.'); 
	      	  return false;
	      	  
	 	 } else{
	 		
	        $.ajax ({
	            type: 'POST',

	            url: 'UserCheckServlet.do',

	            data: { id: id },

	            success: function(msg) {
	               if(msg.result == 0 ) {
	                  $('#checkMessage').css('color','green');
	                  $('#checkMessage').html('사용할 수 있는 아이디입니다.');
	                  $('#idDuplication').attr("value","idCheck");
	               } else {
	                  $('#checkMessage').css('color','red');
	                  $('#checkMessage').html('이미 사용중인 아이디입니다.');
	                  $('#idDuplication').attr("value","idUnCheck");
	               }
	            }
	         });
	     }     
	 }
</script>   
  	  
 </head>  
 <!-- onSubmit="return checkValue();" -->
 <body>

        <div class="page-header">
    	    <h1>Any Shop 회원가입 </h1>
        </div>
        <form class="form-horizontal" method="post" name="userInfo" action="regiAfter.do">
         <div class="form-group">
          <label class="col-sm-3 control-label">아이디</label>
        <div class="col-sm-6">
          <input class="form-control" name="id" id="_id" type="text" placeholder="아이디">
          <input type="button" value="중복 확인" onClick="idCheck()">
	      <div id="checkMessage"></div>
		  <input type="hidden" id="_idDuplication" name="idDuplication" value="idUncheck">
        </div>
        </div>
   
       
        
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
        <div class="col-sm-6">
         <input type="password" class="form-control" name="pw" id="_pw"  placeholder="비밀번호">
		 <span id="_pw1"></span> 
		 <input type="hidden" id="pwCheck" value="pwUnCheck">
        	<p class="help-block"> 8자 이상으로 입력해 주세요.</p>
        </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
             <div class="col-sm-6">
              <input type="password" class="form-control" name="pw2" id="_pw2">
			  <span id="_pw3"></span> 
			  <input type="hidden" id="pw2Check" value="pW2UnCheck">
                <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
             </div>
          </div>
          
           <div class="form-group">
         	 <label class="col-sm-3 control-label">이메일</label>
       		 <div class="col-sm-6">
         		 <input class="form-control" name="email" id="_email" type="text">
         		 <span id='_email1'></span>
			 	 <input type="hidden" id="emailCheck" value="emailUnCheck">
      		  </div>
        	</div>
          
          
        <div class="form-group">
            <label class="col-sm-3 control-label">이름</label>
          <div class="col-sm-6">
            <input class="form-control" type="text" name="name" id="_name" placeholder='한글과 영문으로만 입력하세요'> 
            <span id="_name1"></span>
			<input type="hidden" id="nameCheck" value="nameUnCheck">
          </div>
        </div>
        
         <div class="form-group">
            <label class="col-sm-3 control-label">주소</label>
          <div class="col-sm-6">
            <input class="form-control" name="address" id="_address" type="text" placeholder="주소">
            <span id='_address1'></span>
            <input type="hidden" id="addressCheck" value="addressUnCheck">
          </div>
        </div>
        
        
        
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
              <div class="col-sm-6">
                <div class="input-group">
                  <input type="text" class="form-control" name="phone" placeholder=' "-"없이 입력하세요 ' id='_phone'> 
                  <span id='_phone1'></span> 
                  <input type="hidden" id="phoneCheck" value="phoneUnCheck">
                </div>
              </div>
        </div>
        
         <div>
            <label class="col-sm-3 control-label">성별</label>
          <div class="col-sm-6">
          	 <input type="radio" name="gender" value="man"> 남자 &nbsp; 
			 <input type="radio" name="gender" value="women"> 여자
          </div>
        </div>
      <br>
          <div class="form-group">
            <div class="col-sm-6" data-toggle="buttons">
              <label class="btn btn-warning active">
                <input id="agree" type="checkbox" autocomplete="off" chacked>
                  <span class="fa fa-check"></span>
              </label>
              <a href="#">이용약관</a> 에 동의 합니다.
            </div>
          </div>
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">회원가입<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" type="submit">가입취소<i class="fa fa-times spaceLeft"></i></button>
          </div>
        </div>
       </form>
</body>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/bootstrap/regijs/bootstrap.min.js"></script>

  
  
  <script>

      var result = true;
      var msg = "";
      
       $("#_id").keyup(function () {
              regexp = /[0-9,a-z,A-Z]/;
             v = $(this).val();
             if (! regexp.test(v)) {
                $('#checkMessage').css('color','red');
                 $('#checkMessage').html('적합하지 않은 아이디 입니다.');
             } else if( v.length < 4) {
                $('#checkMessage').css('color','orange');
                 $('#checkMessage').html('아이디 길이는 4자 이상으로 입력해주세요.');
             } else {
                $('#checkMessage').css("color","green");
                $('#checkMessage').html("적합한 아이디 입니다.");
               
             }
         });
      
       $("#_pw").keyup(function () {
           regexp = /[0-9,a-z,A-Z, \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\\]/;
          v = $(this).val();
          if (! regexp.test(v)) {
             $('#_pw1').css('color','red');
              $('#_pw1').html('불완전한 비밀번호 입니다.');
              $('#pwCheck').attr('value','pwUnCheck');
          } else if( v.length < 8) {
             $('#_pw1').css('color','orange');
              $('#_pw1').html('비밀번호 길이는 8자 이상입니다.');
              $('#pwCheck').attr('value','pwUnCheck');
          } else {
             $('#_pw1').css("color","green");
             $('#_pw1').html("안정적인 비밀번호 입니다.");
             $('#pwCheck').attr('value','pwCheck');
            
          }
      });
       
     $("#_pw2").keyup(function () {
       v = $(this).val();
       v2 = $('#_pw').val();
       
       if ( v != v2 ) {
          $('#_pw3').css('color','red');
           $('#_pw3').html('비밀번호가 서로 일치하지 않습니다.');
           $('#pw2Check').attr('value','pw2UnCheck');
       } else if( v.length < 8) {
          $('#_pw1').css('color','orange');
          $('#_pw1').html('비밀번호 길이는 8자 이상입니다.');
          $('#pw2Check').attr('value','pw2UnCheck');
      } else {
          $('#_pw3').css("color","green");
          $('#_pw3').html("비밀번호가 서로 일치합니다.");
         $('#pw2Check').attr('value','pw2Check');
        
       }
   });
     
      $("#_email").keyup(function () {
         regexp = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
         v = $(this).val();
         if ( regexp.test(v)) {   
             $('#_email1').css('color','green');
             $('#_email1').html("올바른 이메일입니다.");
             $('#emailCheck').attr('value','emailCheck');
         } else {
         	$('#_email1').css('color','red');
             $('#_email1').html("이메일 형식으로 입혁하시기 바랍니다.");
             $('#emailCheck').attr('value','emailUnCheck');
           
         }
     }); 
     
    $("#_name").keyup(function () {
        regexp = /^[가-힣a-zA-Z]+$/;
        v = $(this).val();
        
        if ( regexp.test(v)) {   
            $('#_name1').css('color','green');
            $('#_name1').html("올바른 이름입니다.");
            $('#nameCheck').attr('value','nameCheck');
        } else {
        	$('#_name1').css('color','red');
            $('#_name1').html("이름을 특수문자 또는 ㄱ,ㄴ,ㄷ 으로는 사용할 수 없습니다.");
            $('#nameCheck').attr('value','nameUnCheck');
          
        }
    });
       
/*      $("#_address").keyup(function () {
        regexp = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
        v = $(this).val();
        if ( ! regexp.test(v)) {
        	 $('#_address1').css('color','red');
             $('#_address1').html("입니다.");
             $('#_addressCheck').attr('value','_addressUnCheck');
        } else {
            $('#_address1').css('color','green');
            $('#_address1').html("올바른 번호입니다.");
            $('#_addressCheck').attr('value','_addressCheck');
        }
    });  */
    

    $("#_phone").keyup(function () {
        regexp = /[0-9]{11}/;
        v = $(this).val();
        if ( ! regexp.test(v)) {
            $('#_phone1').css('color','red');
            $('#_phone1').html("올바르지 않은 번호입니다.");
            $('#phoneCheck').attr('value','phoneUnCheck');
        } else {
           $('#_phone1').css('color','green');
            $('#_phone1').html("올바른 번호입니다.");
            $('#phoneCheck').attr('value','phoneCheck');
        }
    });
          
</script>



<script>

       // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
        function checkValue()
        {
        	var pwCheck= $('#pwCheck').val();
        	var pw2Check= $('#pw2Check').val();
        	var nameCheck=$('#nameCheck').val();
        	var emailCheck= $('#emailCheck').val();
        	var phoneCheck=$('#phoneCheck').val();
        	var addressCheck=$('#addressCheck').val();			

            if(pwCheck != "pwCheck") {
                alert('비밀번호를 확인 하시기 바랍니다.');
                return false;
             }
            
            else if(pw2Check != "pw2Check") {
                alert('비밀번호 확인란을 확인 하시기 바랍니다.');
                return false;
             }
            
            else if(emailCheck != "emailCheck") {
                alert('이메일을 확인 하시기 바랍니다.');
                return false;
             }
             
             
            else if(nameCheck != "nameCheck") {
                alert('이름을 확인 하시기 바랍니다.');
                return false;
             }
             
            else if(phoneCheck != "phoneCheck") {
                alert('번호를 확인 하시기 바랍니다.');
                return false;
             } 
        	
            else if(!document.userInfo.id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            
            else if(!document.userInfo.pw.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }
            
            else if(!document.userInfo.pw2.value){
                alert("비밀번호확인란을 입력하세요.");
                return false;
            }
            
            else if(!document.userInfo.email.value){
                alert("이메일을 입력하세요.");
                return false;
            }
            
            else if(!document.userInfo.name.value){
                alert("이름을 입력하세요.");
                return false;
            }
            
            else if(!document.userInfo.address.value){
                alert("주소를 입력하세요.");
                return false;
            }
            
            
            else if(!document.userInfo.phone.value){
                alert("전화번호를 입력하세요.");
                return false;
            }
            
            else if(!document.userInfo.gender.value){
                alert("성별을 선택하세요.");
                return false;
            }
            // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
            else if(document.userInfo.pw.value != document.userInfo.pw2.value ){
                alert("비밀번호를 동일하게 입력하세요.");
                return false;
            } else {            
            	alert('회원가입이 정상적으로 이뤄졌습니다.');
            }
            
        }
              
    </script>
  
  
  
  
</html>
