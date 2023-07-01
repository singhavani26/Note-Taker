<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.factoryProvider"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.*"%>
<%@page import="org.hibernate.Query"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your notes are here</title>
<%@include file="all__js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All notes:</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = factoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note n : list) {
				%>
				<div class="card mt-3">
					<img class="card-img-top" style="max-width: 60px;"
						src="img/note.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=n.getTitle()%></h5>
						<p class="card-text"><%=n.getContent()%></p>


						<div class="container text-center">
							<a href="DeleteServlet?note_id=<%=n.getId() %>" class="btn btn-danger">Delete</a> 
							<a href="edit.jsp?note_id=<%=n.getId() %>" class="btn btn-primary">update</a>
						</div>

					</div>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>


	</div>
</body>
</html>