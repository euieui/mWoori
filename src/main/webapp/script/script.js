
function book_go1(kind){
   document.formm.kind.value= kind;
   document.formm.action = "book.do";
   document.formm.submit();
}

function mbook_go1(kind){
	   document.formm.kind.value= kind;
	   document.formm.action = "mbook.do";
	   document.formm.submit();
	}

  function checkRoom () {
	
      var checkinStr =  document.formm.checkin.value;
      var checkoutStr = document.formm.checkout.value;
      var checkin = new Date(checkinStr);
      var checkout = new Date(checkoutStr);
		var difference= (checkout.getTime()-checkin.getTime())/(1000 * 3600 * 24);
		 days = difference/(1000 * 3600 * 24);
		
		
   if (checkinStr == ""){	
      alert("입실날짜를 입력하세요."+difference);
      return false;
   } else if (checkoutStr == ""){
      alert("퇴실날짜를 입력하세요.");
      return false;
   } else if (document.formm.roomnum.value == ""){
      alert("객실갯수를 입력하세요.");
      document.formm.roomnum.focus();
      return false;
   } else if (document.formm.usernum.value ==""){
      alert("인원수를 입력하세요.");
      document.formm.usernum.focus();
      return false;
   } else if (checkin >= checkout){
      alert("예약날짜오류. 예약날짜를 확인하세요.");
      return false;
   }else if(difference>30){
	alert("30일이상 예약할수 없습니다")
		return false;
	}
   return true;
}


function bookcheckpopup(){
	var url = ".html";
		var option="width:880px; "
		window.open(url,"",option);
}

function loginCheck(){
	
	if(document.loginFrm.id.value == ""){
		alert("아이디를 입력하세요");
		document.loginFrm.id.focus();
		return false;
	}
	if(document.loginFrm.pwd.value == ""){
		alert("비밀번호를 입력하세요");
		document.loginFrm.pwd.focus();
		return false;
	}
	return true;
}


function go_next(){
	// 자바스크립트에서 jsp 페이지 내의 radio 버튼을 바라볼때, 같은 name의 radio가 여러개라면
	// name  값에 의한 배열로 인식되어 사용됩니다.   
	// 동의함 버튼 : okon[0],  동의안함  버튼 : okon[1]  
	if( document.contractFrm.okon1[1].checked == true ){
		alert('약관에 동의하셔야 회원 가입이 가능합니다.');
	} else if( document.contractFrm.okon2[1].checked == true ){
		alert('약관에 동의하셔야 회원 가입이 가능합니다.');
	} else if( document.contractFrm.okon3[1].checked == true ){
		alert('약관에 동의하셔야 회원 가입이 가능합니다.');
	} else{
		document.contractFrm.submit(); 
	}
}//





function go_save(){
	if (document.formm.id.value == "") {
		alert("아이디를 입력하여 주세요."); 	    
	    document.formm.id.focus();
	} else if(document.formm.reid.value != document.formm.id.value){
		alert("아이디 중복확인을 하지 않았습니다");		
		document.formm.id.focus();
	} else if(document.formm.pwd.value == "") {
	    alert("비밀번호를 입력해 주세요.");	    
	    document.formm.pwd.focus();
	} else if(document.formm.pwd.value != document.formm.pwdCheck.value) {
	    alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");	    
	    document.formm.pwd.focus();
	} else if(document.formm.name.value == "") {
	    alert("이름을 입력해 주세요.");	    
	    document.formm.name.focus();
	} else if(document.formm.email.value == "") {
	    alert("이메일을 입력해 주세요.");	   
	    document.formm.email.focus();
	}  else if(document.formm.phone.value == "") {
	    alert("전화번호를 입력해 주세요.");	   
	    document.formm.phone.focus();
	} else if(document.formm.zip_num.value == "") {
	    alert("주소를 입력해 주세요.");	   
	    document.formm.zip_num.focus();
	} else{
		document.formm.action = "joinComplete.do";
	    document.formm.submit();
	}
}




function iddoublecheck(){
   if( document.formm.id.value=="" ){
      alert("아이디를 입력하세요" );
      documnet.formm.id.focus();
      return;
   }
   var url = "idCheckForm.do?id=" + document.formm.id.value;
   var opt = "toolbar=no, menubar=no, resizable=no, width=100vw, height:100vw";
   window.open(url, "IdCheck", opt);
}




function post_zip(){
   var url = "findZipNum.do";
   var opt = "toolbar=no, menubar=no, scrollbars=no, resizable=no, width=550,";
   opt = opt + " height=300, top=300, left=300";
   window.open( url, "우편번호 찾기", opt );
}




function result(zip_num, sido, gugun, dong){
	opener.document.formm.zip_num.value=zip_num;
	opener.document.formm.addr1.value=sido+" "+gugun+" "+dong;
	self.close();
}




function move_login(){
	document.joinComFrm.action='loginForm.do';
	document.joinComFrm.submit();
}

function find_id(){
   var url = "findIdPw";
   var url = "findIdPw.do";
   var opt = "toolbar=no,menubar=no,scrollbars=no,resizable=no,width=500,";
   opt = opt + "height=250, top=300, left=300";
   window.open(url, "Find Id/Pw", opt);
}

function mfind_id(){
   var url = "mfindIdForm.do";
   var opt = "toolbar=no,menubar=no,scrollbars=no,resizable=no,width=100vw, height=100vw";
   window.open(url, "Find Id", opt);
}

function mfind_pw(){
   var url = "mfindPwForm.do";
   var opt = "toolbar=no,menubar=no,scrollbars=no,resizable=no,width=100vw, height=100vw";
   window.open(url, "Find Pwd", opt);
}

function mloginCheck(){
	
	if(document.loginFrm.id.value == ""){
		alert("아이디를 입력하세요");
		document.loginFrm.id.focus();
		return false;
	}
	if(document.loginFrm.pwd.value == ""){
		alert("비밀번호를 입력하세요");
		document.loginFrm.pwd.focus();
		return false;
	}
	return true;
}


function mgo_next(){
	// 자바스크립트에서 jsp 페이지 내의 radio 버튼을 바라볼때, 같은 name의 radio가 여러개라면
	// name  값에 의한 배열로 인식되어 사용됩니다.   
	// 동의함 버튼 : okon[0],  동의안함  버튼 : okon[1]  
	if( document.contractFrm.okon1[1].checked == true ){
		alert('약관에 동의하셔야 회원 가입이 가능합니다.');
	} else if( document.contractFrm.okon2[1].checked == true ){
		alert('약관에 동의하셔야 회원 가입이 가능합니다.');
	} else if( document.contractFrm.okon3[1].checked == true ){
		alert('약관에 동의하셔야 회원 가입이 가능합니다.');
	} else{
		document.contractFrm.submit(); 
	}
}

function mgo_back(){
	document.contractFrm.action='mobilemain.do';
	document.contractFrm.submit();
}





function mgo_save(){
	if (document.formm.id.value == "") {
		alert("아이디를 입력하여 주세요."); 	    
	    document.formm.id.focus();
	} else if(document.formm.reid.value != document.formm.id.value){
		alert("아이디 중복확인을 하지 않았습니다");		
		document.formm.id.focus();
	} else if(document.formm.pwd.value == "") {
	    alert("비밀번호를 입력해 주세요.");	    
	    document.formm.pwd.focus();
	} else if(document.formm.pwd.value != document.formm.pwdCheck.value) {
	    alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");	    
	    document.formm.pwd.focus();
	} else if(document.formm.name.value == "") {
	    alert("이름을 입력해 주세요.");	    
	    document.formm.name.focus();
	} else if(document.formm.email.value == "") {
	    alert("이메일을 입력해 주세요.");	   
	    document.formm.email.focus();
	}  else if(document.formm.phone.value == "") {
	    alert("전화번호를 입력해 주세요.");	   
	    document.formm.phone.focus();
	} else if(document.formm.zip_num.value == "") {
	    alert("주소를 입력해 주세요.");	   
	    document.formm.zip_num.focus();
	} else{
		document.formm.action = "mjoinComplete.do";
	    document.formm.submit();
	}
}




function middoublecheck(){
   if( document.formm.id.value=="" ){
      alert("아이디를 입력하세요" );
      documnet.formm.id.focus();
      return;
   }
   var url = "midCheckForm.do?id=" + document.formm.id.value;
   var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=200";
   window.open(url, "IdCheck", opt);
}




function mpost_zip(){
   var url = "mfindZipNum.do";
   var opt = "toolbar=no, menubar=no, scrollbars=no, resizable=no, width=550,";
   opt = opt + " height=300, top=300, left=300";
   window.open( url, "우편번호 찾기", opt );
}




function mresult(zip_num, sido, gugun, dong){
	opener.document.formm.zip_num.value=zip_num;
	opener.document.formm.addr1.value=sido+" "+gugun+" "+dong;
	self.close();
}




function mmove_login(){
	document.joinComFrm.action='mloginForm.do';
	document.joinComFrm.submit();
}





