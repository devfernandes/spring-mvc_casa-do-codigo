<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Cadastro de produtos</title>
		<style type="text/css">
		    <%@include file="../../../resources/bootstrap/css/bootstrap.min.css" %>
		    <%@include file="../../../resources/css/product.css" %>
		</style>
		<script src="../../../resources/bootstrap/js/jquery.js"></script>
		<script src="../../../resources/bootstrap/js/bootstrap.js"></script>
	</head>
	<body>
		<div class="container">
			<form:form method="POST" action="${spring:mvcUrl('PC#save').build()}" commandName="product">
				<div class="form-group">
					<label for="title">Titulo</label>
					<form:input path="title" class="form-control"/>				
					<form:errors path="title"/>
				</div>
				
				<div class="form-group">
					<label for="description">Descrição</label>
					<form:textarea path="description" rows="3" id="description" class="form-control"/>
					<form:errors path="description"/>
				</div>
	
				<div class="form-group">
					<label for="pages">Número de paginas</label> 
					<form:input path="pages" class="form-control" />
				</div>
				
				<div class="form-row">
					<c:forEach items="${bookTypes}" var="bookType" varStatus="status">
						<div class="col">
							<label for="price_${bookType}">${bookType}</label>
							<form:input path="prices[${status.index}].value" id="price_${bookType}" class="form-control" />
							<form:input path="prices[${status.index}].bookType" type="hidden" value="${bookType}" />
						</div>
					</c:forEach>
				</div>
				
				<div>
					<input type="submit" value="Enviar" class="btn btn-primary mt-2">
				</div>
			</form:form>
		</div>
	</body>
</html>
