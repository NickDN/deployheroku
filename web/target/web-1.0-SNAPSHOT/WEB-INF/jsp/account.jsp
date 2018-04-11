<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/css/account.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bootstrap/css/font-awesome.min.css">
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link tnr" href="#">Active</a>
            </li>

            <li class="nav-item">
                <a class="nav-link disabled" href="#">Disabled</a>
            </li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="${pageContext.request.contextPath}/account">
                <p class="tnr"><span class="fa fa-user" style="font-size:30px;color:#42a5f5">
                                    </span> ${account.firstName}</p></a>
            </li>
        </ul>
        <form class="navbar-form navbar-right" role="search">
            <div class="form-group input-group">
                <input type="text" class="form-control" placeholder="Search..">
                <span class="input-group-btn">
            <button class="btn btn-default" type="button">
              <span class="fa fa-search"></span>
            </button>
          </span>
            </div>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="${pageContext.request.contextPath}/logout">
                    <p class="tnr"><span class="fa fa-sign-out" style="font-size:30px;color:#42a5f5">
                     </span>Logout</p></a>
            </li>
        </ul>
    </div>
</nav>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="/css/account.css">
    <link rel='stylesheet' href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel='stylesheet' href="/webjars/bootstrap/css/bootstrap">
 <%--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
  <%--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <style>
        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand tnr" href="#">Logo</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Messages</a></li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <div class="form-group input-group">
                    <input type="text" class="form-control" placeholder="Search..">
                    <span class="input-group-btn">
            <button class="btn btn-default" type="button">
              <span class="glyphicon glyphicon-search"></span>
            </button>
          </span>
                </div>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user tnr"></span> My Account</a></li>
            </ul>
        </div>
    </div>
</nav>


</body>
</html>
