<!-- 通用的包与设置 -->
<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ page import = "mypack.*" %>
<%@ page import = "java.util.Properties" %>
<%@ page errorPage = "errorpage.jsp" %>

<jsp:useBean id="bookDB" scope = "application" class = "mypack.BookDB"></jsp:useBean>