

<HTML>
    <HEAD>
        <TITLE>Booking Confirmation</TITLE>
        <link rel="stylesheet" href="booking.css" type="text/css" />
        
<link rel="stylesheet" href="style.css" type="text/css" />
    </HEAD>
 
    <body background="back.jpg" class="back">
        <h1 align="center">Movie Ticket Booking</h1><BR>
        <h3 align="center"> Movie Name: Jurassic World</h3>
        <h3 align="center">Movie Timing: </h3>
        <h3 align="center"><%= request.getParameter("but") %>
        <h3 align="center">No.of seats: </h3>
        
        <h3 align="center"><%= request.getParameter("person") %>
        <%! int person; %></h3>
        <% 
        int person=Integer.parseInt(request.getParameter("person"));
        %>
            <h3 align="center"> Price: <%= 150*person %></h3><br>
        
        <input type="button" id = "btnGet" value="Confirm Booking" class="confirm" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnGet").click(function () {
            var id=Math.floor(Math.random() * 500); 
            alert("Booking confirmed"+"\n"+id+" "+"is your booking ID");
        });
    });
</script>
    </BODY>
</HTML>