<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico">

    <title> Any Shop 관리자 페이지  </title>

    <!-- Bootstrap -->
    <link href="resources/gentelella/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="resources/gentelella/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="resources/gentelella/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="resources/gentelella/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="resources/gentelella/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="resources/gentelella/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="resources/gentelella/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="resources/gentelella/build/css/custom.min.css" rel="stylesheet">
  </head>
<body>

 <tiles:insertAttribute name="left" />

<div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>    
            </nav>
                      
            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false"></a>
			
			<c:if test="${sessionScope.id ne null }">
            <a href="logout.do" style="float:right; font-size:20px" onclick="return logout();">로그아웃 </a> 
            
            <script>
            	function logout() {
            		if(confirm('정말 로그아웃 하시겠습니까?') == true) {
            			alert('정상적으로 로그아웃 되었습니다.');
        				return true;
            		}	
            	}
            </script>            
           </c:if>           
</div>
          
 

   <tiles:insertAttribute name="body" />      
   
   
   <!-- jQuery -->
    <script src="resources/gentelella/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="resources/gentelella/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="resources/gentelella/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="resources/gentelella/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="resources/gentelella/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="resources/gentelella/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="resources/gentelella/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="resources/gentelella/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="resources/gentelella/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="resources/gentelella/vendors/Flot/jquery.flot.js"></script>
    <script src="resources/gentelella/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="resources/gentelella/vendors/Flot/jquery.flot.time.js"></script>
    <script src="resources/gentelella/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="resources/gentelella/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="resources/gentelella/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="resources/gentelella/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="resources/gentelella/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="resources/gentelella/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="resources/gentelella/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="resources/gentelella/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="resources/gentelella/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="resources/gentelella/vendors/moment/min/moment.min.js"></script>
    <script src="resources/gentelella/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="resources/gentelella/build/js/custom.min.js"></script>
          

</body>
</html>