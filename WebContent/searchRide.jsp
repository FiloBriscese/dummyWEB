<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- TODO dichiarazione e instanziazione di un loginBean !-->
<!--jsp:useBean id="searchBean" scope="request" class="jspexample.SearchBean"/>!-->
<!-- mappare gli attributi di un oggetto sui campi della form -->
<!--jsp:setProperty name="searchBean" property="*"/>!-->

<head>
    <meta charset="UTF-8">
    <title>TVRide - Search for a Ride</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color: #F2EDE4">

<table aria-describedby="navbar">
	<th id="navbar">
        <td class="navbarLogo"><strong style="color: #2C6737; font-size: 21px">TVRide</strong></td>
        <td class="navbarElement"><a href="home.jsp">Home</a></td>
        <td class="navbarElement"><strong>Reserve a Seat</strong></td>
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
        <td class="navbarElement"><a href="profile.jsp">Your Profile</a></td>
        <td class="navbarElement">Notifications</td>
        <td class="navbarElement"><a href="logout.jsp" style="color: red;">Log out</a></td>
    </th>
</table>
<h3>Search for a Ride</h3>
<!-- TODO gestione di questa fomr. Posizione invece che text?!-->
<form>
    <table width=500px>
        <tr>
            <td>Start position</td>
            <td><input type="text" name="startPosition" size="20" maxlength="25"></td>
        </tr>
        <tr>
            <td>Destination</td>
            <td><input type="text" name="destination"></td>
        </tr>
        <tr>
            <td>Date</td>
            <td><input type="date" name="date"></td>
        </tr>
        <tr>
            <td>Time</td>
            <td><input type="time" name="time"></td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td><input name="Search" type="submit" value="Search">
                <input name="Reset" type="reset" value="Reset">
            </td>
        </tr>

    </table>
</form>

</body>
</html>