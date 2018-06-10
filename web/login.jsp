<%-- 
    Document   : login
    Created on : 5 Jun, 2018, 1:00:21 PM
    Author     : SANDRA PRABHU
--%>
<%@page import="java.sql.*"%>
<%
            String uname=request.getParameter("uname");
            String pass2=request.getParameter("pass2");
            
            
            Connection con=null;
            PreparedStatement pst=null;
            ResultSet rs=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost/movie","root","root");
                pst=con.prepareStatement("select * from login where uname=? and pass2=?");
                
                pst.setString(1, uname);
                pst.setString(2, pass2);
                rs = pst.executeQuery();                        
            if(rs.next())           
            {
                response.sendRedirect("moviedetails.html");
            }       
            else
            {
               response.sendRedirect("signup.html");
            }
            }
                catch(Exception e)
                {
                        out.println(e);
                }
%>
