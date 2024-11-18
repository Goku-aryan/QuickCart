<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
String product_id = request.getParameter("id");
try{
	Connection cn = ConnectionProvider.getCon();
	Statement st = cn.createStatement();
	st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+product_id+"' and address is NULL");
	response.sendRedirect("myCart.jsp?msg=remove");
}
catch(Exception ex)
{
	System.out.println(ex);
}
%>