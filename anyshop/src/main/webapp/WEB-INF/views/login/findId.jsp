<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="col-md-12 mt">
   <div class="content-panel">
      <h4>
         <i class="fa fa-angle-right"></i> 아이디 찾기
      </h4>
      <hr>

      <table id="findidTable" class="table table-hover">
         <div class="row mt">
            <div class="col-lg-12">
                  <section id="unseen">
                     <form action="findIdAfter.do" method="post">
                     <table class="table table-hover" id="tablezz">
                        <tr><td>이름</td><td><input type=text name=name></td></tr>
                        <tr><td>학번</td><td><input type=text name=studentId></td></tr>
                        <tr><td colspan="2"><button type="submit" class="btn btn-success" name="Submit">아이디 찾기</button>
                        <button type="reset" class="btn btn-success" name="Reset">취소</button></td></tr>
                        
                     </table>
                     </form>
                  </section>
               </div>
            </div>
      </table>
   </div>
</div>