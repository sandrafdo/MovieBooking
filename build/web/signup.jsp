<%-- 
    Document   : signup
    Created on : 5 Jun, 2018, 8:08:32 PM
    Author     : SANDRA PRABHU
--%>

<html>
    <head>
        <title>Sign Up</title>
        <link rel="stylesheet" href="style.css" type="text/css" />
            
    </head>
    
    <body background="back.jpg" class="back">
        <h1 align="center">Movie Ticket Booking</h1>
       
    <form action="signup.jsp" method="get">
        <h2 align="center">Register</h2><br>
        <label><b>Name</b></label>
    <input type="text" placeholder="Enter your Name" name="name"><br>
    <label><b>Contact Number</b></label>
    <input type="text" name="cno"><br>
    <label><b>Email ID</b></label>
    <input type="text" placeholder="Enter your Email ID" name="mid"><br>

      <label><b>Password</b></label>
      <input type="password" name="pass"><br>

      <label><b>Confirm Password</b></label>
      <input type="password" name="pass1"><br>
      <p>By creating an account you agree to our <a href="#">Terms & Privacy</p><br>
    <button type="reset" class="resetbtn">Clear</button>
    <button type="submit" class="signinbtn" value="submit">Sign up</button>
</form>
    </body>
</html>
<%@page import="java.sql.*"%>
<%
     String name=request.getParameter("name");
     String cno=request.getParameter("cno");
     String mid =request.getParameter("mid");
     String pass=request.getParameter("pass");
     String pass1=request.getParameter("pass1");
            
            
            Connection con=null;
            Statement st=null;
            ResultSet rs=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost/movie","root","root");
                st=con.createStatement();
                st.executeUpdate("insert into reg values('"+name+"','"+cno+"','"+mid+"','"+pass+"','"+pass1+"')");
                response.sendRedirect("moviedetails.html");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }

%>
