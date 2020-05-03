<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Cadastro de produtos</title>
		<style type="text/css">
		    <%@include file="../../../resources/bootstrap/css/bootstrap.min.css" %>
		</style>
		<script src="../../../resources/bootstrap/js/jquery.js"></script>
		<script src="../../../resources/bootstrap/js/bootstrap.js"></script>
	</head>
	<body>
			<button type="button" class="btn btn-primary">Primary</button>
			<form:form method="POST" action="${spring:mvcUrl('PC#save').build()}" commandName="product">
				<div>
					<label for="title">Titulo</label>
					<input type="text" name="title" id="title">
					<form:errors path="title"/>
				</div>
				
				<div>
					<label for="description">Descrição</label>
					<textarea rows="20" cols="10" name="description" id="description"></textarea>
					<form:errors path="description"/>
				</div>
	
				<div>
					<label for="pages">Número de paginas</label> 
					<input type="text" name="pages" id="pages" />
				</div>				
				
				<c:forEach items="${bookTypes}" var="bookType" varStatus="status">
					<div>
						<label for="price_${bookType}">${bookType}</label>
						<input type="text" name="prices[${status.index}].value"	id="price_${bookType}"/>
						<input type="hidden" name="prices[${status.index}].bookType" value="${bookType}"/>
					</div>
				</c:forEach>
				
				<div>
					<input type="submit" value="Enviar">
				</div>
			</form:form>	
	</body>
</html>
