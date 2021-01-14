<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>
<%@ page import="java.util.*"%>

<html>
<head>
<meta charset="UTF-8">
<title>TitleBookDescription</title>
</head>
<body>
<%
	String bookId = request.getParameter("bookId");
	if(bookId==null)
		bookId="201";
	BookDetails book = bookDB.getBookDetails(bookId);
%>

<% 
	if(book==null)
	{
%>
			<p>书号"<%=bookId%>不存在<p>
			<strong><a href="<%=request.getContextPath() %>/catalog.jsp">继续购物</a></strong>>
<%
	return;
	}
%>

<p>书名：<%=book.getTitle() %></p>
作者:<em><%=book.getName() %></em>&nbsp;&nbsp;
(<%=book.getYear() %>)<br>
<p>价格（元）：<%=book.getPrice()%></p>
<p>销售数量：<%=book.getSaleAmount() %></p>
<p>评论：<%=book.getDescription() %></p>

<p><strong><a href="<%=request.getContextPath() %>/catalog.jsp?Add=<%=bookId%>">加入购物车</a>&nbsp; &nbsp; &nbsp;
<a href="<%=request.getContextPath() %>/catalog.jsp">继续购物</a></p></strong>

</body>
</html>