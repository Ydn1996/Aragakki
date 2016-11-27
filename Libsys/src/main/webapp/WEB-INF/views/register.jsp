<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="common/java.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>

</head>
<body>
	<form action="<c:url value='/register' />" method="post">
  	用户名：<input type="text" name="username">
  	密码：<input type="password" name="password">
  	 <input type="submit" value="提交">
  	</form>
	
</body>
</html>