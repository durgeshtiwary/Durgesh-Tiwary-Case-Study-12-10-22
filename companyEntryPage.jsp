<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1 style="color:red">
<u><i>New Company Entry</i></u>
</h1><br/>
<form:form action="company" method="post" modelAttribute="companyRecord">
<h2>
<form:input type="hidden" path="companyId" value="00"/>
<br/><br/>
Enter Company Name:<form:input type="text" path="companyName"/>
<br/><br/>
Enter Share Price:<form:input type="text" path="sharePrice"/>
<br/><br/>
<button type="submit">Submit</button>
<br/><br/>
</h2>
</form:form>
</div>
</body>
</html>