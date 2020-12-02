<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>TVRide - Become a Driver</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color: #F2EDE4">
<table aria-describedby="navbar">
   	<caption>Navigation Bar</caption>
    <th id="navbar">
        <td class="navbarLogo"><strong style="color: #2C6737; font-size: 21px">TVRide</strong></td>
        <td class="navbarElement"><a href="home.jsp">Home</a></td>
        <td class="navbarElement"><a href="searchRide.jsp">Reserve a Seat</a></td>
        <td class="navbarElement"><a href="seatReservations.jsp">Your Reservations</a></td>
        <%
            if (session.getAttribute("userRole").equals("Passenger")) {
        %>
        <td class="navbarElement"><strong>Become a Driver</strong></td>
        <%
        } else if (session.getAttribute("userRole").equals("Driver")) {
        %>
        <td class="navbarElement"><a href="offerRide.jsp">Offer a Ride</a></td>
        <td class="navbarElement"><a href="rideOffered.jsp">Your Rides</a></td>
        <%
            }
        %>
        <td class="navbarElement"><a href="profile.jsp">Your Profile</a></td>
        <td class="navbarElement">Notifications</td>
        <td class="navbarElement"><a href="logout.jsp" style="color: red;">Log out</a></td>
    </tr>
</table>
<br>
<p>prenota appuntamento per verificare la tua patente</p>
</body>