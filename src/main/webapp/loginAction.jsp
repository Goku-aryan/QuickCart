<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");
if("admin12@gmail.com".equals(email) && "admin".equals(password))
{
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
}
else
{
	int z = 0;
	try{
		Connection cn = ConnectionProvider.getCon();
		Statement st = cn.createStatement();
		ResultSet rs = st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
		while(rs.next()){
			z=1;
			session.setAttribute("email",email);
			response.sendRedirect("home.jsp");
		}
		if(z==0){
			response.sendRedirect("login.jsp?msg=notexist");
		}
	}
	catch(Exception ex){
		response.sendRedirect("login.jsp?msg=invalid");
		System.out.println(ex);
	}
}
%>