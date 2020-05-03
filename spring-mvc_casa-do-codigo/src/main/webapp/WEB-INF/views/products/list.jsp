<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html;	charset=UTF-8">
	<title>Lista de produtos</title>
	<style type="text/css">
		    <%@include file="../../../resources/bootstrap/css/bootstrap.min.css" %>
		    <%@include file="../../../resources/css/product.css" %>
		</style>
		<script src="../../../resources/bootstrap/js/jquery.js"></script>
		<script src="../../../resources/bootstrap/js/bootstrap.js"></script>
	</head>
	<body>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Titulo</th>
					<th scope="col">Valores</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="product">
					<tr>
						<th scope="row">${product.title}</th>					
						<td>	
							<c:forEach items="${product.prices}" var="price">					
								[${price.value} - ${price.bookType}]
							</c:forEach>
						</td>						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>