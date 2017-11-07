<%-- 
    Document   : index
    Created on : 05-11-2017, 0:54:47
    Author     : FrancoR
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login page</title>
    </head>
    <body>
        <div class="container">
            <div class="wrapper">
                <form action="login.do" method="post" name="Login_Form" class="form-signin">
                    <h3 >Bienvenido! Por favor Ingrese</h3>
                    

                    <input  name="Username" placeholder="Username" required="" autofocus="" />
                    <input  name="Password" placeholder="Password" required=""/>     		  

                    <button   name="Submit" value="Login" type="Submit">Login</button>
                    ¿Nuevo Usuario?&nbsp;<a href="crearCuenta.jsp">Crear cuenta</a>
                </form>
            </div>
            <div >
                <c:if test="${not empty listaMensajes}">
                    <ul>
                        <c:forEach var="mensaje" items="${listaMensajes}">
                            <li>${mensaje}</li>
                            </c:forEach>
                    </ul>
                </c:if>
            </div>  
        </div>                 
    </body>
</html>
