<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
</style>
<script type="text/javascript">


function gofindId(){

	if(document.frm.name.value == ""){
		alert("이름을 입력하세요");
		document.frm.name.focus();
		return false;
	}
	
	if(document.frm.phone.value == ""){
		alert("전화번호를 입력하세요");
		document.frm.phone.focus();
		return false;
	}
	document.frm.action='mfindIdStep1.do';
	document.frm.submit();
}
</script>
<div class="mcontTitle">ID 찾기</div>
<hr style="width:100vw; border-bottom:0; border-left:0;" border:#a1886f;>
<br><Br>
<form method="post" name="frm" action="mfindIdStep1.do">
	<input type="text" name="name" value="${member.NAME}" class="msubInput" placeholder="성명">
	<hr style="border:hidden; height:3vw; margin:0;">
	<input type="text" name="phone" value="${memer.PHONE}" class="msubInput" placeholder="전화번호">
	<br><br><br>
	<center><input type="button" value="인증번호 전송" class="mjoinButton" onclick="gofindId()"></center>
	<center>${msg}</center>
	<Br><br>
</form>
<hr style="width:100vw; border:#F2EFEB; border-bottom:0; height:2vw; background:#F2EFEB;">

<%@ include file="../footer.jsp" %>