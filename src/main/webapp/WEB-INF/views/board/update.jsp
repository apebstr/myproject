<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#btnUpdate').click(function() {
			$('#frm').attr('action', 'update.do').submit();
		});
		$('#btnCancle').click(function() {
			$('#frm').attr('action', 'list.do').submit();
		});	
	});
</script>

 	<form name = "frm" id="frm" method="post">
 	
 		<table class="table  table-bordere mt-1">		
			<tr>
				<td width="20%" align="center">작성자</td>
				<td><input type="text" name="writer" value="${dto.writer}" readonly/></td>
			</tr>
			<tr>
				<td width="20%" align="center">제목</td>
				<td><input type="text" name="title" value="${dto.title}"/></td>
			</tr>
			<tr>
				<td width="20%" align="center">내용</td>
				<td><textarea name="content" rows="10" style="width:100%">${dto.content}</textarea></td>
			</tr>
		</table>
		<input type="hidden" name="num" value="${dto.num}" class="btn btn-secondary btn-sm"/>

		<div class="text-center">
			<input type="button" value="수정" id='btnUpdate' class="btn btn-secondary"/>
			<input type="button" value="취소" id='btnCancle' class="btn btn-secondary"/>
		</div>
	</form>
