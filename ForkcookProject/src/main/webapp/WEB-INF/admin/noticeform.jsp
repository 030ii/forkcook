<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
$(function() {
   $("#wkrtjd").click(function() {
	     if($("#subject").val()!==""){
	        alert("저장 되었습니다");
	      }

  });
});
</script>
</head>
<body>
공지 작성 페이지<br>
가맹점이나 관리자만 접근 가능한 페이지 입니다<br>
<br>
<br>
<form action="write.do" method="post">
	<table class="table" style="width: 400px;">
		<tr>
			<th style="width: 100px;">제 목</th>
			<td>
				<input type="text" name="subject" class="form-control" required="required">
			</td>
		</tr>
		<tr>			
			<td colspan="2">
				<textarea rows="5" cols="40" name="content" class="form-control"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<c:set var="root" value="<%=request.getContextPath() %>" />
            <button type="button" onclick="location.href='${root}/admin/notice/list.do'">취소하기</button>
            <button type="submit" id="wkrtjd">작성하기</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>