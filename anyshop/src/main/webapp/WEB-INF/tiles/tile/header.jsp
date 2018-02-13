<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



   <!-- wpf loader Two -->
   <!--  <div id="wpf-loader-two">          
      <div class="wpf-loader-two-inner">
        <span>Loading</span>
      </div>
    </div>  -->
    <!-- / wpf loader Two -->       
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->


  <!-- Start header section -->
  <header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
              <div class="aa-header-top-left">
                <!-- start language -->
                <div class="aa-language">

                </div>
                <!-- / language -->

                <!-- start currency -->
            <!--     <div class="aa-currency">
                  <div class="dropdown">
                    <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                      <i class="fa fa-usd"></i>kor
                      <span class="caret"></span>
                    </a>
               <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">

                    </ul> 
                  </div>
                </div> -->
                <!-- / currency -->
                <!-- start cellphone -->
                <div class="cellphone hidden-xs">
                  <p><span class="fa fa-phone"></span>010-7234-9760 &nbsp; &nbsp; <span class="fa fa-phone"></span>010-3035-1858</p>
                </div>
                <!-- / cellphone -->
              </div>
              <!-- / header top left -->
              <div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">
                
                <c:if test="${sessionScope.id eq 'hjs9760'}">
                	<ul class="aa-head-top-nav-right">         
	                  <li class="hidden-xs"><a href="admin.do">관리자 페이지</a></li>
	                  <li class="hidden-xs"><a href="logout.do" onClick="return logout();">로그아웃</a></li>
              	  </ul>              
                </c:if>
                  
  
 				 <c:if test="${sessionScope.id ne 'hjs9760'}">
              	   <c:if test="${sessionScope.id ne null}">	
	                 	<ul class="aa-head-top-nav-right">
		                  <li><a href="mypage.do"> 내 정보 </a></li>         
		                  <li class="hidden-xs"><a href="wishlist.do">장바구니</a></li>
		                  <li class="hidden-xs"><a href="checkout.do">결제 상품</a></li>
		                  <li class="hidden-xs"><a href="logout.do" onClick="return logout();">로그아웃</a></li>
		                  
		                  	 <script>
						    		function logout() {    		
						    			var logout= confirm("정말 로그아웃 하시겠습니까?");
						    			
						    			if(logout== true) {
						    				alert("정상적으로 로그아웃 되었습니다.");
						    				return true;
						    			}
						    			else {
						    				return false;
						    			}
						    		}     	
	   					   	</script>
	   					   	     
	               		 </ul>
                	 </c:if>
                 </c:if>
                  
                   <c:if test="${sessionScope.id eq null}">
                  	 <ul class="aa-head-top-nav-right">
                 		 <li><a href="" data-toggle="modal" data-target="#login-modal">로그인</a></li>
                 		 <li class="hidden-xs"><a href="regi.do">회원가입</a></li>
                 	 </ul>
                  </c:if>
             
				  
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header top  -->

    <!-- start header bottom  -->
    <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
              <!-- logo  -->
              <div class="aa-logo">
                <!-- Text based logo -->
                <a href="main.do">
                  <span class="fa fa-shopping-cart"></span>
                  <p>Any<strong>Shop</strong> <span>Hong & Choi</span></p>
                </a>
                <!-- img based logo -->
                <!-- <a href="index.html"><img src="resources/bootstrap/img/logo.jpg" alt="logo img"></a> -->
              </div>
              <!-- / logo  -->
              
          
          
	 <!-- cart box -->    

             <c:if test="${!empty sessionScope.id }">             
              	<div class="aa-cartbox">
               	 <a class="aa-cart-link" href="cart.do">
                	  <span class="fa fa-shopping-basket"></span>
                 	 <!-- <span class="aa-cart-title">장바구니</span> -->
                 	 <span class="aa-cart-notify">2</span>
               	 </a>
               	 
               	 <div> <span style="font-weight:bold;">${sessionScope.loginInfo.name }</span> 님 반갑습니다. </div> 
	             <div> 내 포인트: ${sessionScope.loginInfo.point} 점  </div>
               	 
               	</div>	
			 </c:if>
			 	 
<%--              <c:if test="${empty sessionScope.id }">
              
              	<div class="aa-cartbox">
               		 <a class="aa-cart-link" href="cart.do">
                	  	<span class="fa fa-shopping-basket"></span>
                 		 <!-- <span class="aa-cart-title">장바구니</span> -->
                 		 <span class="aa-cart-notify">2</span>
               		 </a>             	 
               	</div>
                
  					
			 </c:if> --%>
	<!-- / cart box -->
              
              
           	<!-- search box -->
              <div class="aa-search-box">
                <form action="">
                  <input type="text" name="" id="" placeholder="찾으시는 것을 검색하세요. ">
                  <button type="submit"><span class="fa fa-search"></span></button>
                </form>
              </div>
              <!-- / search box -->             
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header bottom  -->
  </header>
  <!-- / header section -->	  
  
  
  <!-- menu -->
<section id="menu">
    <div class="container">
      <div class="menu-area">
        <!-- Navbar -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>          
          </div>
          <div class="navbar-collapse collapse">
            <!-- Left nav -->
            <ul class="nav navbar-nav">
              <li><a href="main.do">Home</a></li>
              <li><a href="#">남자 <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">Casual</a></li>
                  <li><a href="#">Sports</a></li>
                  <li><a href="#">Formal</a></li>
                  <li><a href="#">Standard</a></li>                                                
                  <li><a href="#">T-Shirts</a></li>
                  <li><a href="#">Shirts</a></li>
                  <li><a href="#">Jeans</a></li>
                  <li><a href="#">Trousers</a></li>
                  <li><a href="#">And more.. <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Sleep Wear</a></li>
                      <li><a href="#">Sandals</a></li>
                      <li><a href="#">Loafers</a></li>                                      
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a href="#">Women <span class="caret"></span></a>
                <ul class="dropdown-menu">  
                  <li><a href="#">Kurta &amp; Kurti</a></li>                                                                
                  <li><a href="#">Trousers</a></li>              
                  <li><a href="#">Casual</a></li>
                  <li><a href="#">Sports</a></li>
                  <li><a href="#">Formal</a></li>                
                  <li><a href="#">Sarees</a></li>
                  <li><a href="#">Shoes</a></li>
                  <li><a href="#">And more.. <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Sleep Wear</a></li>
                      <li><a href="#">Sandals</a></li>
                      <li><a href="#">Loafers</a></li>
                      <li><a href="#">And more.. <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="#">Rings</a></li>
                          <li><a href="#">Earrings</a></li>
                          <li><a href="#">Jewellery Sets</a></li>
                          <li><a href="#">Lockets</a></li>
                          <li class="disabled"><a class="disabled" href="#">Disabled item</a></li>                       
                          <li><a href="#">Jeans</a></li>
                          <li><a href="#">Polo T-Shirts</a></li>
                          <li><a href="#">SKirts</a></li>
                          <li><a href="#">Jackets</a></li>
                          <li><a href="#">Tops</a></li>
                          <li><a href="#">Make Up</a></li>
                          <li><a href="#">Hair Care</a></li>
                          <li><a href="#">Perfumes</a></li>
                          <li><a href="#">Skin Care</a></li>
                          <li><a href="#">Hand Bags</a></li>
                          <li><a href="#">Single Bags</a></li>
                          <li><a href="#">Travel Bags</a></li>
                          <li><a href="#">Wallets &amp; Belts</a></li>                        
                          <li><a href="#">Sunglases</a></li>
                          <li><a href="#">Nail</a></li>                       
                        </ul>
                      </li>                   
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a href="#">Kids <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">Casual</a></li>
                  <li><a href="#">Sports</a></li>
                  <li><a href="#">Formal</a></li>
                  <li><a href="#">Standard</a></li>                                                
                  <li><a href="#">T-Shirts</a></li>
                  <li><a href="#">Shirts</a></li>
                  <li><a href="#">Jeans</a></li>
                  <li><a href="#">Trousers</a></li>
                  <li><a href="#">And more.. <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Sleep Wear</a></li>
                      <li><a href="#">Sandals</a></li>
                      <li><a href="#">Loafers</a></li>                                      
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a href="#">Sports</a></li>
             <li><a href="#">Digital <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">Camera</a></li>
                  <li><a href="#">Mobile</a></li>
                  <li><a href="#">Tablet</a></li>
                  <li><a href="#">Laptop</a></li>                                                
                  <li><a href="#">Accesories</a></li>                
                </ul>
              </li>
              <li><a href="#">Furniture</a></li>            
              <li><a href="blog-archive.html">Blog <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="blog-archive.html">Blog Style 1</a></li>
                  <li><a href="blog-archive-2.html">Blog Style 2</a></li>
                  <li><a href="blog-single.html">Blog Single</a></li>                
                </ul>
              </li>
              <li><a href="contact.html">Contact</a></li>
              <li><a href="#">Pages <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="product.html">Shop Page</a></li>
                  <li><a href="product-detail.html">Shop Single</a></li>                
                  <li><a href="404.html">404 Page</a></li>                
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>       
    </div>
  </section>


  <!-- / menu -->
  
  
  