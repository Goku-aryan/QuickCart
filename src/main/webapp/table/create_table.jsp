<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
try{
	Connection cn = ConnectionProvider.getCon();
	Statement st = cn.createStatement();
	st.execute("create table If Not Exists users(name varchar(50),email varchar(50)primary key,mobileNumber bigint,securityQuestions varchar(100),answer varchar(100),password varchar(50),address varchar(200),city varchar(50),state varchar(50),country varchar(50))");
	st.execute("create table If Not Exists product(id int, name varchar(200),category varchar(100),price int,active varchar(10))");
	st.execute("create table If Not Exists cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(400),city varchar(100),state varchar(100),country varchar(100),mobileNumber long,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(10))");
	st.execute("create table If Not Exists message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id))");
	System.out.println("Table Created...");
	cn.close();
}
catch(Exception ex)
{
System.out.println(ex);	
}
%>