<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");
String email = request.getParameter("email");
String status = "Cancel";
try{
	Connection cn = ConnectionProvider.getCon();
	Statement st = cn.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");
	response.sendRedirect("ordersReceived.jsp?msg=cancel");
}
catch(Exception ex)
{
	System.out.println(ex);
	response.sendRedirect("ordersReceived.jsp?msg=wrong");
}
%>