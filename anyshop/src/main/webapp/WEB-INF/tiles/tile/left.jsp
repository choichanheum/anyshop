<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


            
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="admin.do" class="site_title"><i class="fa fa-paw"></i> <span>AnyShop 관리자 페이지</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_info">
                <span>환영합니다.</span>
                <h2> ${sessionScope.name} 관리자님</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br>

            <!--  sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section active">
                <h3>관리자 기능</h3>
                <ul class="nav side-menu" style="">
                  <li class="active"><a><i class="fa fa-user"></i> 회원관리 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu" style="display: block;">
                      <li class="current-page"><a href="showAllMember.do">회원리스트</a></li>
                      <li><a href="regiMember.do">회원등록</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-shopping-cart"></i> 주문관리 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form.html">전체 주문 내역</a></li>
                      <li><a href="form_advanced.html">결제 완료</a></li>
                      <li><a href="form_validation.html">배송 준비</a></li>
                      <li><a href="form_wizards.html">배송 중</a></li>
                      <li><a href="form_upload.html">배송 완료</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-close"></i> 취소 | 교환 | 반품 | 환불 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="general_elements.html">취소 신청</a></li>
                      <li><a href="media_gallery.html">취소 완료</a></li>
                      <li><a href="typography.html">반품 신청</a></li>
                      <li><a href="icons.html">반품 완료</a></li>
                      <li><a href="glyphicons.html">교환 신청</a></li>
                      <li><a href="widgets.html">교환 완료</a></li>
                      <li><a href="invoice.html">환불 신청</a></li>
                      <li><a href="inbox.html">환불 완료</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-photo"></i> 디자인 관리 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="tables.html">메인 슬라이드</a></li>
                      <li><a href="tables_dynamic.html">Table Dynamic</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-krw"></i> 매출 관리<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="chartjs.html">매출 리스트</a></li>
                      <li><a href="chartjs2.html">Chart JS2</a></li>
                      <li><a href="morisjs.html">Moris JS</a></li>
                      <li><a href="echarts.html">ECharts</a></li>
                      <li><a href="other_charts.html">Other Charts</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i>통계 관리 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="fixed_sidebar.html">회원 통계</a></li>
                      <li><a href="fixed_footer.html"> 매출 통계 </a></li>
                    </ul>
                  </li>
                </ul>
              </div> 
              
              <div class="sidebar-footer hidden-small">
              	<a data-toggle="tooltip" data-placement="top" title="" data-original-title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>화면잠금 
                </a>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
<!--               <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="" data-original-title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a> -->

<!--               <a data-toggle="tooltip" data-placement="top" title="" href="login.html" data-original-title="Logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a> -->
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>