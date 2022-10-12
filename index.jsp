<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>
<u><i>Company Share List</i></u>
<h4 style="color:red">
<a href="company-entry">Enlist A New Company</a>
</h4>
<br/>

<table border="2">
<tr bgcolor="#ff8c00">
	<th> Company Id</th>
	<th> Company Name</th>
	<th> Share Price</th>
	<th>Action</th>
</tr>
    	<c:forEach items="${companyList}" var="company">
     	<tr bgcolor="#FFFF00">
     	<td>${company.companyId}</td>
     	<td>${company.companyName}</td>
     	<td>${company.sharePrice}</td>
     	<td>
     	<a href="display-company/${company.companyId}">Display</a>
     	&nbsp;&nbsp;<a href="edit-company/${company.companyId}">Edit</a>
     	&nbsp;&nbsp;<a href="delete-company/${company.companyId}">Delete</a>
     	</td>
     	</tr>
     	</c:forEach>
</table>
</h2>
<br/><br/>
</div>
</body>
</html>