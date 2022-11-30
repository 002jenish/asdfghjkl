<%-- 
    Document   : index
    Created on : 11 déc. 2013, 14:19:47
    Author     : Karl
--%>
<jsp:useBean id="gameBean" scope="session" class="net.kirauks.tictactoe.GameBean" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tic Tac Toe</title>
    </head>
    <body>
        <font  size =" 6"
               face=" verdana"
               color="blue"
               Tic Tac Toe
               </font>
        <h1>Tic Tac Toe</h1>
        
        <form action="entryServlet" method="post">
            <input type="submit" name="User" value="User Start" style="height: 100px; width: 120px; left: 250; top: 250;
                   animation: 100; "><br><br>
            <input type="submit" name="Computer" value="Computer Start" style="height: 100px; width: 120px; left: 250; top: 150">
        </form>
    </body>
</html>
