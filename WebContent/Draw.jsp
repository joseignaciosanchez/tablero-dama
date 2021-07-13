<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%-- <style type="text/css">
	<%@include file="css/style.css" %></style> --%>
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<title>Checkerboard Page</title>
</head>
<body>
	<%
	String width = request.getParameter("width");
	String height = request.getParameter("height");
	String noWidth = "Ingrese el ancho en la Url";
	String noHeight = "Ingrese el alto en la Url";
	
	response.setContentType("text/html");
	PrintWriter print = response.getWriter();
	
	if (request.getParameter("width") == null) {
		print.write("<div class='container'>");
		print.write("<h1>Checkerboard: "+noWidth+"</h1>");
		print.write("</div>");
	}
	if (request.getParameter("height") == null) {
		print.write("<div class='container'>");
		print.write("<h1>Checkerboard: "+noHeight+"</h1>");
		print.write("</div>");
	}
	if ((request.getParameter("height") != null) && ((request.getParameter("width") != null))){
			print.write("<div class='container'>");
			print.write("<h1>Checkerboard: "+width+"w X "+height+"h</h1>");
				for (int j = 0; j < Integer.parseInt(height); j++) {
					print.write("<div class='row'>");
			         for (int i = 0; i < Integer.parseInt(width); i++) {
			             if (((i+j)%2) == 0) {
			            	 print.write("<div class='col-1 bg-danger py-5  border border-dark'></div>");
			             }
			             else{
			            	 print.write("<div class='col-1 bg-primary py-5 border border-dark'></div>");
			             }
			          }
			         print.write("</div>");
			       }
			print.write("</div>");
	}
	%>
	
</body>
</html>