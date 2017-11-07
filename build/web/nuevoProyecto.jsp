<%-- 
    Document   : nuevoProyecto
    Created on : 04-11-2017, 1:35:04
    Author     : Alejandro
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Nuevo Proyecto</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script>            
            function buscarProvincia(str){
                var xhttp;
                xhttp = new XMLHttpRequest();
                xhttp.open("GET", "getprovincia?q="+str, true);
                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("provincia").innerHTML = this.responseText;
                    }
                };
                xhttp.send();
            }
            
            function buscarComuna(str){
                var xhttp;
                xhttp = new XMLHttpRequest();
                xhttp.open("GET", "getcomuna?q="+str, true);
                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("comuna").innerHTML = this.responseText;
                    }
                };
                xhttp.send();
            }            
        </script>
    </head>
    <body>        
        <form name="/MostrarServlet" method="POST">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <table class="table table-striped">
                            <tbody>
                                <tr>
                                    <th>Nombre:</th>
                                    <td> <input type="text" name="nombre" value="" size="30" placeholder="ingrese nombre " required/> </td>
                                </tr>
                                <tr>
                                    <th>Descripcion:</th>
                                    <td> <input type="text" name="descripcion" value="" size="30" placeholder="ingrese una descripcion" required/> </td>
                                </tr>   
                                <tr>
                                    <th>Region:</th>
                                    <td> <select name="region" id="region" onchange="buscarProvincia(this.value);">
                                        <option value="" selected>Seleccione</option>
                                        <c:forEach var="region" items="${listaRegiones}">
                                        <option value="${region.regionId}">${region.regionNombre} (${region.regionOrdinal})</option>
                                        </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Provincia:</th>
                                    <td>
                                        <select name="provincia" id="provincia" onchange="buscarComuna(this.value);">
                                        <option value="" selected>Seleccione</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Comuna:</th>
                                    <td>
                                        <select name="comuna" id="comuna">
                                        <option value="" selected>Seleccione</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Fecha de Inicio: </th>
                                    <td> <input type="date" name="fechaInicio" step="1" value="" required/> </td>
                                </tr>
                                <tr>
                                    <th>Estado de la obra: </th>
                                    <td> <select name="estado" >
                                            <option value="0" selected="">Aprobado</option>
                                            <option value="1">En curso</option>
                                            <option value="2">Finalizado</option>
                                        </select> </td>                                    
                                </tr>
                                <tr>
                                    <th>Presupuesto Inicial: </th>
                                    <td> <input type="text" name="presupuestoInicial" value="" size="30" placeholder="ingrese presupuesto inicial " required/> </td>
                                </tr>
                                <tr>
                                    <th>Presupuesto Gastado: </th>
                                    <td> <input type="text" name="presupuestoGastado" value="" size="30" placeholder="ingrese presupuesto gastado " required/> </td>
                                </tr>
                                <tr>
                                    <td colspan="2"> <input type="submit" value="Crear"  /> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
            </div>
        </form>
    </body>
</html>
