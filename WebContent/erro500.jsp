<%@ page isErrorPage="true" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="icon" href="icone.ico" type="image/x-icon">
		<jsp:include page="cabecalho.jsp">
			<jsp:param value="M�o na Roda" name="titulo" />
		</jsp:include>
	</head>
	<body>
		<jsp:include page='header.jsp'></jsp:include>
		<section id="main">
			<jsp:include page='menu-esquerdo.jsp'></jsp:include>
			<section id="content">
				<div class="container">
					<center><font size='12px'>Problemas com o servidor, tente novamente em instantes!</font></center>
				</div>       
			</section>
		</section>
		<jsp:include page='rodape.jsp'></jsp:include>
		<jsp:include page='scripts.jsp'></jsp:include>
	</body>
</html>