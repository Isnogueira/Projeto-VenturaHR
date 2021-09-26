<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">Ventura HR</a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<c:if test="${empty user}">
				<li><a href="/login"><span
						class="glyphicon glyphicon-log-out"></span>Login</a></li>
				<li><a href="/registro"><span
						class="glyphicon glyphicon-log-out"></span>Sign Up</a></li>
			</c:if>
			<c:if test="${not empty user}">
				<li><a href="/logout"><span
						class="glyphicon glyphicon-log-out"></span>Logout ${user.email}</a></li>
			</c:if>
		</ul>
	</div>
</nav>