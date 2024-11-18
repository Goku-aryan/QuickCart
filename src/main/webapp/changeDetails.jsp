<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body>
<%
try{
	Connection cn = ConnectionProvider.getCon();
	Statement st = cn.createStatement();
	ResultSet rst = st.executeQuery("select * from users where email='"+email+"'");
	while(rst.next())
	{
%>
<h3>Name: <%=rst.getString(1) %></h3>
<hr>
 <h3>Email: <%=rst.getString(2) %></h3>
 <hr>
 <h3>Mobile Number: <%=rst.getString(3) %></h3>
 <hr>
<h3>Security Question: <%=rst.getString(4) %></h3>
<hr>
      <br>
      <br>
      <br>
<%
}
}
catch(Exception ex){
	System.out.println(ex);
}
	%>
</body>
</html>