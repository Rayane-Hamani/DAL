<!DOCTYPE html>


<html>
    <% String contextPath = request.getContextPath(); %>

    <head>
        <title>Login</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="<%= contextPath %>/css/bootstrap.min.css" rel="stylesheet"/>
    </head>

    
    <body>
        <%@ include file="_header.jsp" %>

        <h1>Login</h1>

        <form action="login.html" method="post">
            <input type="text" name="username" placeholder="Username" required pattern="[\w\d-]+">
            <br>
            <input type="password" name="password" placeholder="Password" required pattern="[\w\d-]+">
            <br>
            <button type="submit">Connect !</button>
        </form>

        <%@ include file="_footer.jsp" %>
    </body>

</html>
 
