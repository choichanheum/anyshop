<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Any Shop </h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
	                  <form action="searchMember.do" method="post">
	                  <span> 
	                  	<input type="text" id="_searchName" name="id" class="form-control" placeholder="검색할 회원 아이디를 입력하세요.">
	                    <input type="submit" class="btn btn-default" value="검색">
	                  </span>
		                    <span class="input-group-btn">
		                    
		                     <!--  <button class="btn btn-default" type="button" onClick="return search();">Go!</button> 
		                     	<script>
		                      		function search(){
		                      			var name= $('#_searchName').val();
		                      			alert(name);
		                      			location.href="searchMember.do?searchName="+ name;
		                      		}
		                      	</script>
		                     
		                     -->		                      
		                    </span>
	                    </form>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>회원 리스트</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                    	<div class="row">
                    		<div class="col-sm-6"><div class="dataTables_length" id="datatable_length">
                   			 <label>Show 
                   				 <select name="datatable_length" aria-controls="datatable" class="form-control input-sm">
                   					 <option value="10">10</option>
                   					 <option value="25">25</option>
                   					 <option value="50">50</option>
                   					 <option value="100">100</option>
                   				 </select> entries
                   		 	</label>
                   			</div>
                   		</div>
                   		

                   		</div>
                   		
                   		 <div class="row"><div class="col-sm-12">
                   		 <table id="datatable" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
                      <thead>
                        <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 190px;">이름</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 311px;">아이디</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 142px;">번호</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 75px;">이메일</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 140px;">성별</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 111px;">마일리지</th></tr>
                      </thead>


                     <tbody>       
                     	<c:forEach items="${list}" var="list" begin="0" varStatus="i">                                                                        
	                      <tr role="row" class="odd">
	                          <td class="sorting_1"><c:out value="${list.name}"></c:out></td>
	                          <td>${list.id}</td>
	                          <td>${list.phone}</td>
	                          <td>${list.email}</td>
	                          <td>${list.gender}</td>
	                          <td>${list.point}</td>
	                        </tr>
                        </c:forEach>                        
<!--                         <tr role="row" class="even">
                          <td class="sorting_1">Angelica Ramos</td>
                          <td>Chief Executive Officer (CEO)</td>
                          <td>London</td>
                          <td>47</td>
                          <td>2009/10/09</td>
                          <td>$1,200,000</td>
                        </tr>-->
                        
                      </tbody>
                   </table>
                 </div>
               </div>
               
                    <div class="row">
                    <div class="col-sm-5">
                    <div class="dataTables_info" id="datatable_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries
                    </div>
                    </div>
                    <div class="col-sm-7">
                    <div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate">
                    <ul class="pagination">
                    <li class="paginate_button previous disabled" id="datatable_previous">
                    <a href="#" aria-controls="datatable" data-dt-idx="0" tabindex="0">Previous</a>
                    </li>
                    <li class="paginate_button active">
                    <a href="#" aria-controls="datatable" data-dt-idx="1" tabindex="0">1</a>
                    </li>
                    <li class="paginate_button "><a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button "><a href="#" aria-controls="datatable" data-dt-idx="3" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="datatable" data-dt-idx="4" tabindex="0">4</a></li><li class="paginate_button "><a href="#" aria-controls="datatable" data-dt-idx="5" tabindex="0">5</a></li><li class="paginate_button "><a href="#" aria-controls="datatable" data-dt-idx="6" tabindex="0">6</a></li><li class="paginate_button next" id="datatable_next"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0">Next</a></li></ul></div></div></div></div>
                  </div>
                </div>
              </div>

            </div>
          </div>
             

     

    <!-- jQuery -->
    <script src="resources/gentelella/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="resources/gentelella/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="resources/gentelella/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="resources/gentelella/vendors/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="resources/gentelella/vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="resources/gentelella/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="resources/gentelella/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="resources/gentelella/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="resources/gentelella/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="resources/gentelella/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="resources/gentelella/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="resources/gentelella/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="resources/gentelella/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="resources/gentelella/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="resources/gentelella/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="resources/gentelella/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="resources/gentelella/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="resources/gentelella/vendors/jszip/dist/jszip.min.js"></script>
    <script src="resources/gentelella/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="resources/gentelella/vendors/pdfmake/build/vfs_fonts.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="resources/gentelella/build/js/custom.min.js"></script>

  
