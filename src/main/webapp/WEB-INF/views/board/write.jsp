<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#btnWrite').click(function() {
			$('#frm').attr('action', 'write.do').submit();
		});
		$('#btnCancle').click(function() {
			$('#frm').attr('action', 'list.do').submit();
		});	
	});
</script>
<div class="container">
	<form name="frm" id="frm" method="post">
		<table class="table  table-bordere mt-1">		
			<tr>
				<td width="20%" align="center">작성자</td>
				<td><input type="text" name="writer"/></td>
			</tr>
			<tr>
				<td width="20%" align="center">제목</td>
				<td><input type="text" name="title"/></td>
			</tr>
			<tr>
				<td width="20%" align="center">내용</td>
				<td><textarea name="content" placeholder="내용을 입력하세요"  rows="10" style="width:100%"></textarea></td>
			</tr>
		</table>
		<div class="text-center">
			<input type="button" value="작성" id='btnWrite' class="btn btn-secondary"/>
			<input type="button" value="취소" id='btnCancle' class="btn btn-secondary"/>
		</div>
	</form>
</div>