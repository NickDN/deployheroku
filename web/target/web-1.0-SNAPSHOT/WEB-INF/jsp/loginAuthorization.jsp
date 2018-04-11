<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta name="viewpoint" content="width=device-width, initial-scale=1.0">
    <title>loginAuthorization</title>
    <link rel="stylesheet" href="../../css/login.css">
</head>
<body>
<c:if test="${empty param.email}">
    <%--todo Э. Форвард можно? Корректно?--%>
    <jsp:forward page="login">
        <jsp:param name="errMsg" value="Email or Password field is empty"/>
    </jsp:forward>
</c:if>

<jsp:useBean id="service" class="ru.myproject.dyakins.service.AccountServiceImpl" scope="application"/>

<c:catch var="exception">
    <c:set var="accout" value="${service.get(param.email)}"/>
</c:catch>

<c:choose>
    <c:when test="${exception!=null}">
        <jsp:forward page="login">
            <jsp:param name="errMsg" value="Username/password does not match"/>
        </jsp:forward>
    </c:when>
    <c:otherwise>
<jsp:
        <c:redirect url="account"/>
    </c:otherwise>
</c:choose>

<%--<table>
 <jsp:useBean id="service" class="ru.myproject.dyakins.service.AccountServiceImpl" scope="application"/>
    <c:forEach var="account" items="${service.getAll()}">
        <tr>
            <td>${account.firstName}</td>
            <td>${account.secondName}</td>
        </tr>
    </c:forEach>
</table>--%>
</body>
</html>
