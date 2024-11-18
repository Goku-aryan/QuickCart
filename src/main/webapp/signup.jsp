<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>SignUp</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  
  <form action="signupAction.jsp" method="post">
  <input type="text" name="name" placeholder="Enter name" required>
  	<input type="email" name="email" placeholder="Enter Email" required>
  	<input type="number" name="mobilenumber" placeholder="Enter mobile number" required>
  	<select name="securityquestion" required>
  	<option value="What is your nick name?">What is your nick name?</option>
  	<option value="In which city was your first job?">In which city was your first job?</option>
  	<option value="What is your car color?">What is your car color?</option>
  	<option value="What is your best-friend name?">What is your best-friend name?</option>
  	</select>
  
    	<input type="text" name="answer" placeholder="Enter answer" required>
    	<input type="password" name="password" placeholder="Enter password" required>
    	<input type="submit" value="signup" style="cursor:pointer">
    	</form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  
  <%
  String msg = request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>

<h1>Successfully Registered</h1>

<% } %>

<%
if("invalid".equals(msg))
{
%>
<h1>Something Went Wrong! Try Again !</h1>

<% } %>

    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>