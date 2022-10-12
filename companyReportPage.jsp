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
<h1 style="color:red">
<u><i>Company Details for ${company.companyId}</i></u>
</h1>
<br/>
<h2>
	Company Id:${company.companyId }
	<br/><br/>
	Company Name:${company.companyName}
	<br/><br/>
	Share Price:${course.sharePrice}
	
<br/><br/>
<a href="/index">Return</a>
</h2>
</div>

</body>
</html>