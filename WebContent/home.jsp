<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>TVRide</title>
</head>
<body style="background-color: #F2EDE4">
<table width="100%">
    <tr align="center">
        <td width="10px" align="left"><b style="color: #2C6737; font-size: 21px">TVRide</b></td>
        <td width="100px"><b>Home</b></td>
        <td width="100px"><a href="searchRide.jsp">Reserve a Seat</a></td>
        <td width="100px"><a href="seatReservations.jsp">Your Reservations</a></td>
        <%
            if (session.getAttribute("userRole").equals("Passenger")) {
        %>
        <td width="100px"><a href="becomeDriver.jsp">Become a Driver</a></td>
        <%
            } else if (session.getAttribute("userRole").equals("Driver")) {
        %>
                <td width="100px"><a href="offerRide.jsp">Offer a Ride</a></td>
                <td width="100px"><a href="rideOffered.jsp">Your Rides</a></td>
        <%
            }
        %>
        <td width="100px"><a href="profile.jsp">Your Profile</a></td>
        <td width="100px">Notifications</td>
        <td width="100px">
            <input type="submit" id="logout" value="Log out" style="color: red">
        </td>
    </tr>
</table>
<h3>Ciao <%=session.getAttribute("userName") %> <%=session.getAttribute("userCognome")%></h3>
<br>
<p>qui mettere tipo: la tua prossima corsa è il XX alle XX da X a X (come Passeggero/Driver)</p>
<ul>colori da usare:
    <li style="color: #f2ede4; background-color: #0f0f0f; size: 50px">f2ede4</li>
    <li style="color: #449343">449343</li>
    <li style="color: #2c6737">2c6737</li>
    <li style="color: #275840">275840</li>
</ul>
</body>