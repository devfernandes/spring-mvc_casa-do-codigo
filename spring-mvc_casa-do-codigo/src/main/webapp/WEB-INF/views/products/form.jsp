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
			<form:form method="POST" action="${spring:mvcUrl('PC#save').build()}" commandName="product">
				<div class="form-group">
					<label for="title">Titulo</label>
					<input type="text" name="title" id="title" class="form-control">
					<form:errors path="title"/>
				</div>
				
				<div class="form-group">
					<label for="description">Descrição</label>
					<textarea rows="3" name="description" id="description" class="form-control"></textarea>
					<form:errors path="description"/>
				</div>
	
				<div class="form-group">
					<label for="pages">Número de paginas</label> 
					<input type="text" name="pages" id="pages" class="form-control"/>
				</div>
				
				<div class="form-row">
					<c:forEach items="${bookTypes}" var="bookType" varStatus="status">
						<div class="col">
							<label for="price_${bookType}">${bookType}</label>
							<input class="form-control" type="text" name="prices[${status.index}].value" id="price_${bookType}"/>
							<input type="hidden" name="prices[${status.index}].bookType" value="${bookType}"/>
						</div>
					</c:forEach>
				</div>
				
				<div>
					<input type="submit" value="Enviar" class="btn btn-primary">
				</div>
			</form:form>	
	</body>
</html>
