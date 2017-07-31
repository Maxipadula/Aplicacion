<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css" />

<html>
<body>
<h2>${Cliente.getNombre()}</h2>
</body>
</html>
