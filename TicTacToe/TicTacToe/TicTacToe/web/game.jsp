
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="net.kirauks.tictactoe.GameBean.GameState" %>
<%@page import="net.kirauks.tictactoe.Cell" %>
<%@page import="net.kirauks.tictactoe.Line" %>

<jsp:useBean id="gameBean" scope="session" class="net.kirauks.tictactoe.GameBean" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<style>
            <!--h1{text-align: center;}
        </style>-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tic Tac Toe</title>
    </head>
    
    <body>
        <font  size =" 5"
               face=" verdana"
               color="blue"
               Tic Tac Toe
               </font>
        <h1>Tic Tac Toe</h1>
        <table border="1">
            <c:forEach var="line" items="${gameBean.gridLines}">
            <tr>
                <c:forEach var="cell" items="${gameBean.getGridStatus(line)}">
                <td>
                    <c:choose>
                        <c:when test="${cell.state == 'X'}">
                            <img src="img/state_x.png" alt="X"/>
                        </c:when>
                        <c:when test="${cell.state == 'O'}">
                            <img src="img/state_o.png" alt="O"/>
                        </c:when>
                        <c:otherwise>
                            <c:if test="${winner == null}">
                                <a href="gameServlet?Line=${cell.line}&Col=${cell.col}">
                            </c:if>
                                <img src="img/state_null.png" alt="null"/>
                            <c:if test="${winner == null}">
                                </a>
                            </c:if>
                        </c:otherwise>
                    </c:choose>
                </td>    
                </c:forEach>
            </tr>
            </c:forEach>
        </table>
        <c:if test="${winner != null}">
            <h2>${winner} winner </h2>
            <form action="index.jsp" method="post">
                <input type="submit" name="Replay" value="Replay"><br/>
            </form>
        </c:if>
    </body>
</html>
