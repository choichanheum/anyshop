<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
             <form action="">
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>상품 삭제</th>
                        <th> 이미지 </th>
                        <th> 상품명 </th>
                        <th> 가격 </th>
                        <th> 수량 </th>
                        <th> Total </th>
                      </tr>
                    </thead>
                    <tbody>
	                    <c:if test="${wishlist ne null }">
	                    	<c:forEach var="wishlist" items="${wishlist}">
		                      <tr>
		                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
		                        <td><a href="#"><img src="${wishlist.image}" alt="img"></a></td>
		                        <td><a class="aa-cart-title" href="#">${wishlist.product}</a></td>
		                        <td>${wishlist.price}</td>
		                        <td><input class="aa-cart-quantity" type="number" value="${wishlist.quantity}"></td>
		                        <td>Total</td>
		                      </tr>
	                     	 </c:forEach>
	                    </c:if>   
	                 </tbody>
                  </table>
                </div>
             </form>
             <!-- Cart Total view -->
             <div class="cart-view-total">
               <h4>Cart Totals</h4>
               <table class="aa-totals-table">
                 <tbody>
                   <tr>
                     <th>Subtotal</th>
                     <td>$450</td>
                   </tr>
                   <tr>
                     <th>Total</th>
                     <td>$450</td>
                   </tr>
                 </tbody>
               </table>
               <a href="#" class="aa-cart-view-btn">Proced to Checkout</a>
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>