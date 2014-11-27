<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 2014-10-19
  Time: 03:59
  To change this template use File | Settings | File Templates.
--%>
<%--JSTL Core--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--JSTL Functions--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--JSTL Formatting--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Spring--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--Spring Security--%>

<%--Spring Forms--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.js"></script>
</head>
<body>
Test: dupa
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div id="info"></div>
<form:form id="userForm" modelAttribute="userForm">
    <label for="nickname">Nick:</label><form:input id="nickname" path="nickname"></form:input>
    <label for="password">Pass:</label><form:password id="password" path="password"></form:password>
    <form:button id="sendButton">Send</form:button>
</form:form>

</body>
</html>
<script>

    $(document).ready(function()
    {
        $("#userForm").on("submit", function(e)
    {
        e.preventDefault();
        var userForm = $("#userForm").serializeArray();
        $.post("<spring:url value="/ajaxAdd"/>",userForm, function(resp) {
           $("#info").text("Info: "+ resp);

        });
    });

    });
</script>
