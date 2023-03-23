<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>
			<thead>
				<th>Id</th>
				<th>name</th>
				<th>Description</th>
				<th>CreateDate</th>
			</thead>
			<tbody>
				<c:forEach items="${listProducts}" var="product">
					<tr>
						<td>${product.id}</td>
						<td>${product.name}</td>
						<td>${product.description}</td>
						<td>
							<fmt:formatDate value="${product.createDate}" pattern="dd/MM/yyyy"/>
						</td>
						<td>
							<a href="${pageContext.request.contextPath}/product/edit?id=${product.id}">Edit</a>
							<a href="${pageContext.request.contextPath}/product/delete?id=${product.id}">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
	</table>

</body>
</html>