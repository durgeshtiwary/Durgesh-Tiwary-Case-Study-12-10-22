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
<h1 style="color:blue">
<u><i>Company Price Updation</i></u>
</h1>
<br/>
<form:form action="company-edit" method="post" modelAttribute="companyRecord">
<h2>
Company Id<form:input type="text" path="companyId" disable="true"/>
<br/><br/>
Company Name:<form:input type="text" path="companyName" disable="true"/>
<br/><br/>
Share Price:<form:input type="text" path="sharePrice" disable="true"/>
<br/><br/>
<button type="submit">Submit</button>
<br/><br/>
</h2>
</form:form>
</div>
</body>
</html>