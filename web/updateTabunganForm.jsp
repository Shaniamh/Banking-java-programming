<%-- 
    Document   : updateTabungan
    Created on : Apr 15, 2018, 10:45:21 PM
    Author     : ASUS
--%>

<%@page import="model.Tabungan"%>
<%@page import="services.admin.TabunganService"%>
<jsp:useBean id="t" class="model.Tabungan"></jsp:useBean>
<jsp:setProperty property="*" name="t"/>

<%@page import="model.Nasabah"%>
<%@page import="services.admin.NasabahService"%>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>

<%
    Tabungan tabung = TabunganService.getInstance().getById(n.getId());
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update Tabungan</h1>
        <center>
            <form action="updateTabungan.jsp" method="POST">
                <table>
                    <tr>
                        <td><input type="text" name="noRekening" value="<% out.print(n.getId()); %>"></td>
                    </tr>
<!--                    <tr>
                        <td>ID</td>
                        <td> : <input type="text" value="" name="idNasabah"></td>
                    </tr>-->
                    <tr>
                        <td>User Name</td>
                        <td> : <input type="text" name="userName" value="<% out.println(tabung.getUserName()); %>"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td> : <input type="text" name="password" value="<% out.println(tabung.getPassword()); %>"></td>
                    </tr>
                    <tr>
                        <td>Saldo</td>
                        <td> : <input type="text" name="saldo" value="<% out.println(tabung.getSaldo()); %>"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" ></td>
                    </tr>
                </table>
                
            </form>

        </center>
    </body>
</html>
