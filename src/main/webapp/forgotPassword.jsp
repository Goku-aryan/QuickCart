<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  
  <form action="forgotPassswordAction.jsp" method="post">
  	<input type ="email" name="email" placeholder="Enter the email" required>
  	<input type="number" name="mobileNumber" placeholder="Enter the mobile number" required>
  	<select name="securityQuestion">
  		<option value="What is your nick name?">What is your nick name?</option>
  		<option value="In which city was your first job?">In which city was your first job?</option>
  		<option value="What is your car color?">What is your car color?</option>
  		<option value="What is your best-friend name?">What is your best-friend name?</option>
  	</select>
  		<input type ="text" name="answer" placeholder="Enter the answer" required>
  		<input type ="password" name="newPassword" placeholder="Enter the new password" required>
  		<input type="submit" value="Save">
  </form>
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
   
   <%
   		String msg = request.getParameter("msg");
   		if("done".equals(msg))
   		{
   %>
   
<h1>Password Changed Successfully!</h1>

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