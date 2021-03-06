<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../adminheader.jsp" %>
        
<style>
article h1{
 text-align: center; margin-top: 100px;
}

#admin_qnaList{ margin:0 auto;
 width:1000px; border:1px soloid black; text-align: center;
 padding:10 10 10px;
 /* //dd */
border-collapse:collapse;

width:600px; text-align: center;      
table-layout:fixed;
  
}
#admin_qnaList tr th{
background-color:  #9F876B;
border-bottom:  1px solid black;
}
#admin_qnaList tr{
height:  50px;
}
#qna_button{

border:1px solid black;
 height: 36px;
 width: 80px;
 font-weight: bold;
 background: #9F876B;
  font-size: 65%;
     
    }  
</style>
<script type="text/javascript">

function go_rep(qnaseq){
	document.frm.action="adminQnaRepsave.do";
	document.frm.submit();
}d
function go_list() {
	document.frm.action="adminQnaList.do";
	document.frm.submit();
}
</script>

<article>

<form name="frm" method="post">
<input type="hidden" name="qnaseq" value="${qnaDto.QNASEQ}">
<table id="admin_qnaList">
        <caption>
                       <h1>Q&amp;A 게시판</h1>
        </caption>
        
        	<tr style="border: 1px solid black"><th width="20%">제목</th><td align="left">${qnaDto.TITLE } ${qnaDto.REP } </td></tr>
        	<tr style="border: 1px solid black"><th>등록일</th><td align="left"> <fmt:formatDate value="${qnaDto.INDATE}"/></td></tr>
        	<tr style="border: 1px solid black"><th>문의사항</th><td align="left"> ${qnaDto.CONTENT }</td></tr>
            
           <c:choose>
             <c:when test='${qnaDto.REP=="1" }'>
           	<tr>
              <td colspan="2"><textarea name="reply" rows="7" cols="82.5"style="border: 2px solid black"></textarea></td>
            </tr>
            </table>
           
              <div style="margin:0 auto; width:200px;">
                <input type="button" class="btn" value="저장" onclick="go_rep('${qnaDto.QNASEQ}')"id="qna_button">
               <input  type="button" value="목록" onClick="go_list()" id="qna_button">
              </div>
             
           
           </c:when>
           <c:otherwise>
            <tr style="border: 1px solid black">
              <th>답변</th><td style="text-align: center;">${qnaDto.REPLY}</td>
            </tr>
           
           </c:otherwise>
           
           </c:choose> 
            <tr></tr>

</table>

</form>
</article>




<%@ include file="../adminfooter.jsp" %>