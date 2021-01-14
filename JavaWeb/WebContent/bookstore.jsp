<%@ include file = "common.jsp" %>
<%@ page contentType = "text/html; charset=UTF-8" %>
<html>
<head><title>Bookstore</title></head>
<body>
<%@ include file="banner.jsp" %>
<center>
	<p><b> <a href="<%=request.getContextPath() %>/catalog.jsp">察看所有书目</a></b>
<form action = bookdetails.jsp method="POST">
<h3>请输入查询信息</h3>
<b>书的编号:：</b>
<input type = "text" size="20" name="bookId" value = ""><br><br>
<center><input type = submit value="提交"></center>
</center>
</body>
</html>