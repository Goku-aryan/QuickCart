<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/bill.css">
<title>Bill</title>
</head>
<body>
<%
String email = session.getAttribute("email").toString();
try{
	int total=0;
	int sno=0;
	Connection cn = ConnectionProvider.getCon();
	Statement st = cn.createStatement();
	ResultSet rst = st.executeQuery("select sum(total) from cart where email='"+email+"' and status='bill'");
	while(rst.next()){
		total=rst.getInt(1);
	}
	ResultSet rst1 = st.executeQuery("select * from users inner join cart where cart.email='"+email+"' and cart.status='bill'");
	while(rst1.next())
	{
%>
<h3>Online shopping Bill (BTech Days)</h3>
<hr>
<div class="left-div"><h3>Name: <%=rst1.getString(1) %> </h3></div>
<div class="right-div-right"><h3>Email: <%out.println(email); %>  </h3></div>
<div class="right-div"><h3>Mobile Number: <%=rst1.getString(20) %>  </h3></div>  

<div class="left-div"><h3>Order Date: <%=rst1.getString(21) %>  </h3></div>
<div class="right-div-right"><h3>Payment Method: <%=rst1.getString(23) %>  </h3></div>
<div class="right-div"><h3>Expected Delivery: <%=rst1.getString(22) %>  </h3></div> 

<div class="left-div"><h3>Transaction Id: <%=rst1.getString(24) %>  </h3></div>
<div class="right-div-right"><h3>City: <%=rst1.getString(17) %>  </h3></div> 
<div class="right-div"><h3>Address: <%=rst1.getString(16) %>  </h3></div> 

<div class="left-div"><h3>State: <%=rst1.getString(18) %>  </h3></div>
<div class="right-div-right"><h3>Country: <%=rst1.getString(19) %>  </h3></div>  

<hr>
<%break;} %>

	
	<br>
	
<table id="customers">
<h3>Product Details</h3>
  <tr>
    <th>S.No</th>
    <th>Product Name</th>
    <th>category</th>
    <th>Price</th>
    <th>Quantity</th>
     <th>Sub Total</th>
  </tr>
  <%
  ResultSet rst2 = st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.status='bill'");
  while(rst2.next())
  {
	sno=sno+1;  
  %>
  <tr>
    <td><%out.println(sno); %></td>
    <td><%=rst2.getString(17) %></td>
    <td><%=rst2.getString(18) %></td>
    <td><%=rst2.getString(19) %></td>
    <td><%=rst2.getString(3) %></td>
     <td><%=rst2.getString(5) %></td>
  </tr>
  <tr>
<%} %>
</table>
<h3>Total: <%out.println(total); %></h3>
<a href="continueShopping.jsp"><button class="button left-button">Continue Shopping</button></a>
<a onclick="window.print();"><button class="button right-button">Print</button></a>
<br><br><br><br>
<%
}
catch(Exception ex){
	System.out.println(ex);
}
%>
</body>
</html>