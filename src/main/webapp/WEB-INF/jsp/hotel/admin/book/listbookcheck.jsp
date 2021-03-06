<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../adminheader.jsp" %>


<article  class="rightarticle_aa"><%@ include file="sub_menu.jsp" %>
<form name="frm" method="post">
<div class="bbox_aa">
<div id="bboxb_aa">
	<div id="bcheck_aa">예약 확인</div>
	<div id="bigctextbox_aa">
		<div class="smallctextbox_aa">
			<div class="ctextsub_aa"> &nbsp;아이디</div>
			<div class="ctexttext_aa">${booklist.ID}</div>
		</div>
		<div class="smallctextbox_aa">
			<div class="ctextsub_aa"> &nbsp;이름</div>
			<div class="ctexttext_aa">${booklist.NAME}</div>
			<input type="hidden" id="bookdetailname" value="${booklist.NAME }">
		</div>
		<div class="smallctextbox_aa">
			<div class="ctextsub_aa">&nbsp;예약 번호</div>
			<div class="ctexttext_aa">${booklist.BOOKNUM}</div>
			<input type="hidden" id="bookdetailnum" value="${booklist.BDSEQ }">
		</div>
		<div class="smallctextbox_aa">
			<div class="ctextsub_aa">&nbsp;객실</div>
			<div class="ctexttext_aa">${booklist.KIND}</div>
		</div>
		<div class="smallctextbox_aa">
			<div class="ctextsub_aa">&nbsp;객실 번호</div>
			<div class="ctexttext_aa">${booklist.HOTELNUM}</div>
		</div>
		<div class="smallctextbox_aa">
			<div class="ctextsub_aa">&nbsp;인원</div>
			<div class="ctexttext_aa">${booklist.USERNUM}</div>
		</div>
		<div class="smallctextbox_aa">
			<div class="ctextsub_aa">&nbsp;체크인</div>
			<div class="ctexttext_aa"><fmt:formatDate value="${booklist.CHECKIN}"/></div>
		</div>
		<div class="smallctextbox_aa">
			<div class="ctextsub_aa">&nbsp;체크아웃</div>
			<div class="ctexttext_aa"><fmt:formatDate value="${booklist.CHECKOUT}"/></div>
		</div>
		<div class="smallctextbox_aa">
			<div class="ctextsub_aa">&nbsp;결제 금액</div>
			<div class="ctexttext_aa">${booklist.PRICE}</div>
		</div>
		<c:choose>
			<c:when test='${booklist.RESULT=="2" }'>
				<div class="smallctextbox_aa">
					<div class="ctextsub_aa">&nbsp;환불 금액</div>
					<div class="ctexttext_aa">${booklist.REFUND}</div>
				</div>
			</c:when>
			<c:when test='${booklist.RESULT=="3" }'>
				<div class="smallctextbox_aa">
					<div class="ctextsub_aa">&nbsp;환불 금액</div>
					<div class="ctexttext_aa">${booklist.REFUND}</div>
				</div>
			</c:when>
		</c:choose>
		
	</div>
	
	<div id="buttons_aa">
	<input type="button" value="목록으로" class="btn_aa" id="checkmain_aa"
		onclick="location.href='adminbookchecklist.do?gotonum='+${gotonum}">
	<c:choose>
		<c:when test='${booklist.RESULT=="2" }'>
			<input type="button" value="예약 취소" class="btn_aa" id="checkmain_aa"
				onclick="confirmbookcancel();">
		</c:when>
	</c:choose>
	<input type="hidden" id="gotonum"  value="${gotonum}">
		<!-- location.href='hotel.do?command=adminbookcancel&booknum=${bookcheck.booknum}' -->
</div> 
	
	
</div>


</div>
</form>
</article>
<%@ include file="../adminfooter.jsp" %>