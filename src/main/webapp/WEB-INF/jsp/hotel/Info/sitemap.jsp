<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
<style>
article {width: 920px; margin: 0 auto;
}
#top{
}
#top div{
width:920px;  height:30px; border-bottom:3px solid #3a3125;    font-weight:bold; }
#content a { text-decoration:none; }
#content a:link, visited, hover {color: }
#content ul {
float:  left;   padding-left: 0;
color: #9F876B;
   }
#content li { 
   list-style:none; text-indent:10px; color: #9F876B;
  font-weight:bold;
  padding-bottom: 10px;
  }
#content{
  top: 30px;
  position: relative;
 height: 600px;
 font-size: 90%;  
width: 920px;
}

#m_left{
  width: 200px;
 float: left;
 padding-right: 30px;
}
#m_left_menu{
border-bottom: 2px solid;
 height: 50px;
  }
#m_center{
 width: 200px;
  float: left;
  padding-right: 30px;
}
#m_center_menu{
 border-bottom: 2px solid;
 height: 50px;
    }
#m_right{
 width: 200px;
 float: left;
  padding-right: 30px;
}
#m_right_menu{
  border-bottom: 2px solid;
  height: 50px;
    }
#b_left{
 width: 200px;
  float: left;
   padding-right: 30px;
}
#b_left_menu{
border-bottom: 2px solid;
 height: 50px;
    }
	
  
</style>

<article>


<div id = "top">
    <h1><span>  사이트맵</span></h1>
     	<div> The Woori Hotel</div>
 </div>
 
 <div id="content">
 <div id="m_left">
    <div id="m_left_menu"> <h2> <span> 우리호텔 소개 </span></h2></div>
        <ul>
      	
		<li><a href="goInfo.do">-&nbsp;호텔 개요</a></li>
		<li><a href="seoulHotel.do">-&nbsp;제주 호텔</a></li>
		<li><a href="map.do">-&nbsp;호텔 길찾기 </a>	

        </ul>
 </div>
 
 <div id="m_center">
    <div id="m_center_menu"><h2><span> 고객문의 </span></h2> </div>
        <ul>
             
		        <li><a href="contact.do">-&nbsp;Q&amp;A 고객센터 </a></li>
				<li><a href="qnaList.do"> -&nbsp;나의 Q&amp;A 게시글 </a></li>
				<li><a href="qnaWriteForm.do">-&nbsp;Q&amp;A 질문하기</a></li>      
        </ul>
 </div>
 
 <div id="m_right">
    <div id="m_right_menu"><h2><span> 갤러리 </span></h2> </div>
        <ul>
       		<li><a href="gallery.do">-&nbsp;사진</a></li>
			<li><a href="v.do">-&nbsp;비디오</a></li>
        </ul>
 </div>
 
 <div id="b_left">
    <div id="b_left_menu"><h2><span>마이페이지 </span></h2> </div>
        <ul>
	<li><a href="bookChecklist.do">-&nbsp;예약확인/취소</a></li>
		<li><a href="profilePw.do">-&nbsp;프로필수정</a></li>
		<li><a href="pwUpdateForm.do">-&nbsp;비밀번호 변경</a></li>
		<li><a href="qnaList.do">-&nbsp;문의 내역</a></li>
		<li><a href="quitPw.do">-&nbsp;탈회 요청</a></li>
        </ul>
 </div>
 <div id="b_left">
    <div id="b_left_menu"><h2><span>객실관리 </span></h2> </div>
        <ul>
	        <li id="room_li"><a href="gotoroom.do?num=1">-&nbsp;Deluxe </a></li>
			<li id="room_li"><a href="gotoroom.do?num=2">-&nbsp; BusinessDeluxe </a></li>
			<li id="room_li"><a href="gotoroom.do?num=3">-&nbsp;GrandCornerDeluxe</a></li> 
			<li id="room_li"><a href="gotoroom.do?num=4">-&nbsp;ExecuticeBusinessDeluxe</a></li>
        </ul>
 </div>
 
 
 
 </div>


</article>



<div  class="clear"></div>
<%@ include file="../footer.jsp" %>