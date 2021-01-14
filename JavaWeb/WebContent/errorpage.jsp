<%@ page import = "java.io.*" %>

<%@ page contentType = "text/html; charset = gb2312" %>
<%@ page isErrorPage = "true"%>
<html>
<head> <title>Error Page</title></head>
<body>
	<p>
		服务器端发生错误：<%= exception.getMessage() %>
	</p>
	
	<p>
		错误原因为：<% exception.printStackTrace(new PrintWriter(out));%>
	</p>
</body>
</html>