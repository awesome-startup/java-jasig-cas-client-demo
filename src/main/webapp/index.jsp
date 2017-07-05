<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="org.jasig.cas.client.authentication.AttributePrincipalImpl"%>
<!DOCTYPE html>
<html>
<head>
	<title>java-jasig-cas-client-demo</title>
	<meta charset="UTF-8" />
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<ul class="nav nav-tabs">
			<li class="active"><a href="/index.jsp">You are on the /index.jsp page</a></li>
			<li><a href="/protected/index.jsp">Call the CAS Login page</a></li>
			<!-- #### change with your own CAS server and your host name #### -->
			<li><a href="http://cas-server.tiger.wizmacau.com/cas/logout?service=http://cas.swarm.wizmacau.com:8080">Call the CAS logout</a></li>
 			<li><a href="/logout.jsp">Clean session</a></li>
		</ul>
		<h3>
			<% AttributePrincipalImpl user = (AttributePrincipalImpl) request.getUserPrincipal();
			if (user != null) { %>
				<p>User: <%=user.getName()%></p>
				<p>Attributes: <%=user.getAttributes()%></p>
			<% } else { %>
				<p>Unauthenticated / anonymous user</p>
			<% } %>
		</h3>
	</div>
</body>
</html>
