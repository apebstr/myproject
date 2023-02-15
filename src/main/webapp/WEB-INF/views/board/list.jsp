<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#btnWrite').click(function() {
			$('#frm').attr('action', 'write.do').submit();
		});
	});
</script>

<div id="bodywrap">
	<table class="table table-border mt-1">
		<form name="frm" id="frm" method="GET">
			<input type="button" value="글쓰기" id="btnWrite" class="btn btn-secondary btn-sm"/>
		</form>
		<thead>
			<tr>
				<th class="col-md-1 text-center" align="center">#</th>
				<th class="col-md-5 text-center">제목</th>
				<th class="col-md-2 text-center">작성자</th>
				<th class="col-md-2 text-center">작성일</th>
				<th class="col-md-2 text-center">조회수</th>
			</tr>
		</thead>
		<tbody >
			<c:forEach items="${aList}" var="dto">
				<tr >
					<td class="text-center">${dto.num}</td>
					<td class="pl-2 text-left"><a href="read.do?num=${dto.num}">${dto.title}</a></td>
					<td class="text-center">${dto.writer}</td>
					<td class="text-center">${dto.regdate}</td>
					<td class="text-center">${dto.readcount}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>