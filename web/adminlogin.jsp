<%-- 
    Document   : adminlogin
    Created on : 7 Jun, 2018, 1:09:27 PM
    Author     : SANDRA PRABHU
--%>

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
                response.sendRedirect("admindetails.html");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }

%>
