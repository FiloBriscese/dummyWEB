<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- dichiarazione e instanziazione di un loginBean !-->
<jsp:useBean id="loginBean" scope="request" class="jspexample.LoginBean"/>
<!-- mappare gli attributi di un oggetto sui campi della form -->
<jsp:setProperty name="loginBean" property="*"/>

<head>
    <meta charset="UTF-8">
    <title>TVRide - Offer a Ride</title>
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
        <td width="100px"><b>Offer a Ride</b></td>
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
<h3>Offer a Ride</h3>
<!-- TODO gestione di questa form. Posizione invece che text?!-->
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
            <td>Number of seats</td>
            <td><input type="number" name="numberOfSeats" value="1" min="1" max="4"></td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td><input name="Offer" type="submit" value="Offer">
                <input name="Reset" type="reset" value="Reset">
            </td>
        </tr>

    </table>
</form>

</body>
</html>