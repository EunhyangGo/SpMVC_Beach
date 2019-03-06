<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/include/include-head.jspf" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
</head>
<body>
	<header>
		<img class="btn-home" src="${rootPath}/resources/logo2.png" title="HOME" height="150px">
		<nav>
			<c:choose>
				<c:when test="${BODY=='ADMIN'}">
					<button class="login-btn">해변관리</button>
					<button class="login-btn">후기관리</button>
					<button class="login-btn">로그아웃</button>
				</c:when>
				<c:otherwise>
				<c:forEach var="menu" items="${MENU}">
					<button class="main-btn" id="${menu}" data-area-id="${menu}">${menu}</button>
				</c:forEach>
				<button class="login-btn">관리자</button>
				</c:otherwise>
			</c:choose>
		</nav>
	</header>
	<section>
		<article class="section-top">
		</article>
		<article class="section-middle">
			<c:if test="${BODY=='MAIN'}">
				<%@ include file="/WEB-INF/views/bodies/main.jspf" %>
			</c:if>
			<c:if test="${BODY=='SUB'}">
				<%@ include file="/WEB-INF/views/bodies/sub.jspf" %>
			</c:if>
			<c:if test="${BODY=='EX'}">
				<%@ include file="/WEB-INF/views/bodies/ex.jspf" %>
			</c:if>
			<c:if test="${BODY=='LOGIN'}">
				<%@ include file="/WEB-INF/views/bodies/login.jspf" %>
			</c:if>
			<c:if test="${BODY=='ADMIN'}">
				<%@ include file="/WEB-INF/views/bodies/admin.jspf" %>
			</c:if>
		</article>
		<article class="section-bottom">
		</article>
	</section>
	<footer>
		<img src="${rootPath}/resources/logo1.png" height="80px">
	</footer>
</body>
</html>