<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title> Login </title>
	</head>
	<%
		String errMsg = null;
		// First check whether the form was submitted
		if("POST".equalsIgnoreCase(request.getMethod()) &&
			request.getParameter("submit") != null) {
	%>
			<!-- Added comment to practive GIT Commands -->
			<!-- Form was submitted -->
			<jsp:useBean id="loginBean" class="packt.book.jee_eclipse.ch2.bean.LoginBean">
<%-- 				<jsp:setProperty name="loginBean" property="*" /> --%>
				<jsp:setProperty name="loginBean" property="userName" value="<%=request.getParameter(\"userName\")%>" />
				<jsp:setProperty name="loginBean" property="password" value="<%=request.getParameter(\"password\")%>" />
			</jsp:useBean>
	<%
			if(loginBean.isValidUser()) {
				// Valid User
				out.println("<h2> Welcome Admin! </h2>");
				out.println("You are successfully logged in");
			} else {
				// Invalid User. Set error message
				errMsg = "Invalid User ID or Password. Please try again";
			}
	%>
	<%	} %>

	<body>
		<h2> Login: </h2>
		<!-- Check error message. If it is set, then display it -->
		<% if (errMsg != null) { %>
			<span style="color: red;"><%out.print(errMsg); %></span>
		<%} %>
		<form method="post">
			User Name: <input type="text" name="userName"><br>
			Password:  <input type="text" name="password"><br>
			<button type="submit" name="submit"> Submit </button>
			<button type="reset"> Reset </button>
		</form>
	</body>
</html>