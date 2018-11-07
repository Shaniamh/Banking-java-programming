<%-- 
    Document   : updateNasabahGetId
    Created on : Apr 15, 2018, 4:27:28 PM
    Author     : ASUS
--%>

<%@page import="model.Nasabah"%>
<%@page import="services.admin.NasabahService"%>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>

<%
    Nasabah orang = NasabahService.getInstance().getById(n.getId());
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Nasabah</title>
    </head>
    <body>
        <a href="systemAdminNasabah.jsp">Kembali ke Menu Sebelumnya</a>
        <a href="index.jsp">Kembali ke Menu Awal</a>
        <center>
            <h1>Create Nasabah</h1>
            <form action="updateNasabah.jsp" method="POST">
                <table>
                    <tr>
                        <td><input type="hidden" name="idNasabah" value="<% out.print(orang.getId()); %>"></td>
                    </tr>
                    <tr>
                        <td>Nama Nasabah</td>
                        <td> : <input type="text" name="nasabahName" value="<% out.print(orang.getUserName()); %>"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td> : <input type="password" name="password" value=" <% out.println(orang.getPassword()); %> "></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit"></td>
                    </tr>
                </table>
            </form>
        </center>
    </body>
</html>
