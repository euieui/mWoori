<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ include file="Hamburger.jsp" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>The Woori Hotel</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&f
amily=Gothic+A1:wght@900&family=Hahmlet:wght@251&family=Nanum+Myeongjo:wght@800&display=swap"
 rel="stylesheet">
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">

<style>


.header_logo h1,p{

font-family: 'Nanum Myeongjo', serif;
}

.header_gnb {
}
.header_gnb ul li{
font-family: 'Black Han Sans', sans-serif;
font-family: 'Gothic A1', sans-serif;
font-family: 'Hahmlet', serif;
font-family: 'Nanum Myeongjo', serif;
}
</style>
<script src="<c:url value='/script/script.js'/>"></script>
<script src="<c:url value='/script/mypage.js'/>"></script>
<script src="<c:url value='/script/hotelScript.js'/>"></script>
<link href="mcss/main.css" rel="stylesheet">
<link href="mcss/hotel.css" rel="stylesheet">
<link href="<c:url value='/css/mobileHotel.css'/>" rel="stylesheet">


<%--  <link href="<c:url value='/css/css.css'/> " rel="stylesheet">
<link href="<c:url value='/css/Hotel.css'/>" rel="stylesheet">
<link href="<c:url value='/member/member.css'/> " rel="stylesheet">
 <link href="member/member.css" rel="stylesheet">
<link href="css/Hotel.css" rel="stylesheet">
<link href="script/script.js" rel="stylesheet">  --%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&f
amily=Gothic+A1:wght@900&family=Hahmlet:wght@251&family=Nanum+Myeongjo:wght@800&display=swap"
 rel="stylesheet">
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">


</head>
<body>


<header class="header"><!-- ??????, ?????????, ???????????? ?????? ?????? ???????????? ?????? -->
 <!-- ?????? ?????? ?????? : ????????? CART MyPage ???-->
   <div class="header_logo">
        <a href="mobilemain.do">
            <h1 >THE WOORI</h1>
            <p> HOTELS &RESORTS</p>
        </a>
    
 </div> 
 
<%--  <div class="header_gnb">
  <ul>         
              <li><a href="mgoInfo.do">?????? ?????? ??????</a></li>    
              <li><a href="mroom.do">?????? ??????</a>                          
              <li><a href="mqnaList.do" >????????????</a>  </li>            		
              <li><a href="mgallery.do">?????????</a></li>

  <c:choose> 

          <c:when  test="${empty loginUser}">  
              <li><a href="mloginForm.do">?????????</a></li>
              <li><a href="mcontract.do">????????????</a></li>
          </c:when> 
 <c:otherwise>
               <li id="logo">${loginUser.NAME}(${loginUser.ID})</li>
               <li><a href="mlogout.do">????????????</a></li>
               <li><a href="mbookChecklist.do?page=1&a=1">???????????????</a></li>
         
 </c:otherwise> 
 </c:choose>
           		</ul>
      </div> --%>
        
           		
           		
           		
      
</header> 