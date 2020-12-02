<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>TVRide - Your Profile</title>
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
        <td class="navbarElement"><a href="rideOffered.jsp">Your Rides</a></td>
        <%
            }
        %>
        <td class="navbarElement"><storng>Your Profile</strong></td>
        <td class="navbarElement">Notifications</td>
        <td class="navbarElement"><a href="logout.jsp" style="color: red;">Log out</a></td>
    </th>
</table>
<br>
<p>dati del profilo, immagine, valutazione...</p>
<ul>
    <li><%=session.getAttribute("userName")%> <%=session.getAttribute("userSurname")%></li>
    <li>Sei un: <strong><%=session.getAttribute("userRole")%></strong></li>
    <li>lL tua valutazione media è 4.5/5</li>
</ul>
</body>