<%-- 
    Document   : crearCuenta
    Created on : 05-11-2017, 0:54:58
    Author     : FrancoR
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta charset="utf-8">
       
        <title>Creaci&oacute;n de usuario nuevo</title>
    </head>
    <body>
        <form action="crearUsuario.do" method="POST">
            <div>
                <h2>Crear usuario nuevo</h2>
                <div class="row">
                    <div class="col-sm-4">
                        <table >
                            <tbody>
                                <tr>
                                    <th>Username:</th>
                                    <td> <input type="text" name="user" value="" size="30" placeholder="ingrese nombre de usuario" required/> </td>
                                </tr>
                                <tr>
                                    <th>Password:</th>
                                    <td> <input type="password" name="password" value="" size="30" placeholder="ingrese contraseña" required/> </td>
                                </tr>
                                <tr>
                                    <td colspan="2"> <input type="submit" value="Crear" /> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <c:if test="${not empty listaMensajes}">                      
                <div class="bg-warning">
                    <ul>
                    <c:forEach var="mensaje" items="${listaMensajes}">
                        <li>${mensaje}</li>
                    </c:forEach>
                    </ul>
                </div>
                </c:if>
            </div>
        </form>
    </body>
</html>
