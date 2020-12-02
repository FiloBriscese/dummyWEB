<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>TVRide - Offered Ride</title>
</head>
<body style="background-color: #F2EDE4">
<table width="100%">
    <tr align="center">
        <td width="10px" align="left"><b style="color: #2C6737; font-size: 21px">TVRide</b></td>
        <td width="100px"><a href="home.jsp">Home</a></td>
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
        <td width="100px"><b>Your Rides</b></td>
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
<br>
<p>lista corse offerte</p>
<ol>
    <li>corsa 1</li>
    <li>corsa 2</li>
    <li>corsa 3</li>
</ol>
</body>