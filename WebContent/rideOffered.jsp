<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>TVRide - Offered Ride</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color: #F2EDE4">
<table aria-describedby="navbar">
    <th id="navbar">
        <td class="navbarLogo"><strong style="color: #2C6737; font-size: 21px">TVRide</strong></td>
        <td class="navbarElement"><a href="home.jsp">Home</a></td>
        <td class="navbarElement"><a href="searchRide.jsp">Reserve a Seat</a></td>
        <td class="navbarElement"><a href="seatReservations.jsp">Your Reservations</a></td>
        <%
            if (session.getAttribute("userRole").equals("Passenger")) {
        %>
        <td class="navbarElement"><a href="becomeDriver.jsp">Become a Driver</a></td>
        <%
        } else if (session.getAttribute("userRole").equals("Driver")) {
        %>
        <td class="navbarElement"><a href="offerRide.jsp">Offer a Ride</a></td>
        <td class="navbarElement"><strong>Your Rides</strong></td>
        <%
            }
        %>
        <td class="navbarElement"><a href="profile.jsp">Your Profile</a></td>
        <td class="navbarElement">Notifications</td>
        <td class="navbarElement"><a href="logout.jsp" style="color: red;">Log out</a></td>
    </th>
</table>
<br>
<p>lista corse offerte</p>
<ol>
    <li>corsa 1</li>
    <li>corsa 2</li>
    <li>corsa 3</li>
</ol>
</body>