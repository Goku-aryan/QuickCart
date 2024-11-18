<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
String status = "processing";
try{
	Connection cn = ConnectionProvider.getCon();
	PreparedStatement ps = cn.prepareStatement("update cart set status=? where email=? and status='bill'");
	ps.setString(1, status);
	ps.setString(2, email);
	ps.executeUpdate();
	response.sendRedirect("home.jsp");
}
catch(Exception ex)
{
	System.out.println(ex);
}
%>