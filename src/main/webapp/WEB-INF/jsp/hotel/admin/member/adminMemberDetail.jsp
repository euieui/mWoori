<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../adminheader.jsp" %>
 
<script type="text/javascript">
function go_memberlist_member(){
	document.formm.action = "adminMemberList.do?page=1";
	document.formm.submit();
}

function okButton_member(id){
	if(document.formm.email.value == "") {
	    alert("이메일을 입력해 주세요.");	   
	    document.formm.email.focus();
	}  else if(document.formm.phone.value == "") {
	    alert("전화번호를 입력해 주세요.");	   
	    document.formm.phone.focus();
	} else if(document.formm.zip_num.value == "") {
	    alert("주소를 입력해 주세요.");	   
	    document.formm.zip_num.focus();
	} else{
		var url="adminMemberUpdate.do?id=" + id;
		 document.formm.action=url;
		 document.formm.submit();
	}
}
</script> 
<style>
#adminmemebrlist{
    border: 2px solid #9F876B;
    margin: 0 auto;
    width: 1000px;
    height:200px;
    
}
#adminmemebrlist tr th{
border-bottom:1px solid black;
width:400px;
}
#adminmemebrlist td{
border-bottom:1px solid black;
width:600px;
}
#adminmemebrlist tr td input{
text-align: center;
}

#qna_button{
border:1px solid black;
 height: 36px;
    width: 80px;
    font-weight: bold;
    background: #9F876B;
    font-size: 70%;
}
</style>

<article>


<form method="post" name="formm" action="adminMemberUpdate.do">

<table  id="adminmemebrlist" style="center; width: 500px;">

<caption>
   <h1>우리 호텔 ${dto.NAME}(${dto.ID})님 회원 정보</h1>
</caption>
           <tr><th style="width: 200px;">아이디&nbsp;&nbsp;:</th><td style="text-align: left;">${dto.ID}</td></tr>
			<tr><th>이름&nbsp;&nbsp;:</th><td>${dto.NAME}</td></tr>
			<tr><th>이메일&nbsp;&nbsp;:</th><td><input type="text" size="30" name="email" value="${dto.EMAIL}"></td></tr>
			<tr><th>전화번호&nbsp;&nbsp;:</th><td><input type="text" size="20" name="phone" value="${dto.PHONE}"></td></tr>	
			<tr><th rowspan="3">주소</th><td><input type="text" name="zip_num" size="10" value="${dto.ZIP_NUM}">      
	   		<input type="button" value="주소 찾기" class="dup_brown" onclick="post_zip();"></td></tr>
			<tr><td><input type="text" name="addr1"   size="50" value="${addr1}"></td></tr>
			<tr><td><input type="text" name="addr2"   size="25" value="${addr2}"></td></tr>
			
			<input type="hidden" name="name" value="${dto.NAME}">
			<input type="hidden" name="pwd" value="${dto.PWD}">
</table>

		<center><div id="profText">&nbsp;&nbsp;&nbsp;${message}</div></center>
		<div id="profButton"  style="margin:0 auto;
			width:1000px; border:1px soloid black; text-align: center;">
			<input class="btn" type="button" name="btb_total" value="목록으로" 
  				onclick="go_memberlist_member();"id="qna_button">
			<input type="button" value="수정하기" 
				onclick="okButton_member('${dto.ID}')" id="qna_button">
		</div>
</form>

</article>


<%@ include file="../adminfooter.jsp" %>