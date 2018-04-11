<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Account</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../css/account.css">
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <style>
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">

        <p class="navbar-text nsw" style="color: #42a5f5;">Social network</p>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="${pageContext.request.contextPath}/account"><p class="tnr">
                <span class="glyphicon glyphicon-user nsw-color nsw-padding"></span> ${account.firstName}</p>
            </a></li>
            <li><a href="${pageContext.request.contextPath}/logout"><p class="tnr nsw-right-padding">
                <span class="glyphicon glyphicon-log-out nsw-color nsw-padding"></span>Logout</p>
            </a></li>
        </ul>
    </div>
</nav>

</body>
</html>