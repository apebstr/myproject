<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#btnUpdate').click(function() {
			$('#frm').attr('action', 'update.do').submit();
		});
		$('#btnDelete').click(function() {
			$('#frm').attr('action', 'delete.do').submit();
		});
		$('#btnList').click(function() {
			$('#frm').attr('action', 'list.do').submit();
		});	
	});
</script>    
    
<div class="container">
<form name="frm" id="frm" method="get">
	<table class="table  table-bordered">
		<tr><th class="text-center">작성자</th><td>${dto.writer}</td><th class="text-center">작성일</th><td>${dto.regdate}</td></tr>
		<tr><th class="text-center">제목</th><td>${dto.title}</td><th class="text-center">조회수</th><td>${dto.readcount}</td></tr>
		<tr style="height:250px"><th class="text-center">내용</th><td colspan="3">${dto.content}</td></tr>
		<tr><input type="hidden" name="num" value="${dto.num}" />
	</table>
	<div class="text-center">
		<input type="button" value="목록" id="btnList" class="btn btn-secondary btn-sm"/>
		<input type="button" value="수정" id="btnUpdate" class="btn btn-secondary btn-sm"/>
		<input type="button" value="삭제" id="btnDelete" class="btn btn-secondary btn-sm"/>
	</div>
</form>
</div>