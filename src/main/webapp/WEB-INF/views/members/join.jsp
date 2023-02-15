<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#btnJoinMem').click(function() {
			$('#frmJoin').attr('action', 'join.do').submit();
			console.log("ok")
		});
	});
</script>

<form name="frmJoin" id="frmJoin" method="post">
    <div >
      <input type="text" name="memName" placeholder="name">
    </div>
    <div >
      <input type="text" name="memId" placeholder="id">
    </div>
    <div >
      <input type="password" name="memPw" placeholder="Password">
    </div>

    <input type="button" id="btnJoinMem" value="회원가입" />
</form>