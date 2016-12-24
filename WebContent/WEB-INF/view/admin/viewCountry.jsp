<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
<select name="country">
<c:forEach items="${sessionScope.ls}" var="i">
<option value="${i.countryId}">${i.countryName}</option>
</c:forEach>
</select>
<input type="text" name="state"/>
<input type="submit" value="submit"/>
</form>
</body>
</html>