<%-- 
    Document   : pilihTabunganCreateATM
    Created on : Apr 16, 2018, 8:05:03 PM
    Author     : ASUS
--%>

<%@page import="services.admin.TabunganService"%>
<%@page import="java.util.List"%>
<%@page import="model.Tabungan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Tabungan</title>
    </head>
    <body>
        <a href="systemAdminATM.jsp" >Kembali ke System Admin ATM</a>
        <center>
              
            <h1>List Tabungan</h1>
            <table border="1" width="90%">
                <tr>
                    <th>ID Nasabah</th>
                    <th>Nama Nasabah</th>
                    <th>No Rekening</th>
                    <th>Username Rekening</th>
                    <th>Password Rekening</th>
                    <th>Saldo</th>
                    <th>Create ATM</th>
                </tr>
                <%
                    List <Tabungan> listTabungan = TabunganService.getInstance().getAll();
                    for(Tabungan t : listTabungan){
                %>
                <tr>
                    <td><% out.println(t.getNasabah().getId()); %></td>
                    <td><% out.println(t.getNasabah().getUserName()); %></td>
                    <td><% out.println(t.getRekening()); %></td>
                    <td><% out.println(t.getUserName()); %></td>
                    <td><% out.println(t.getPassword()); %></td>
                    <td><% out.println(t.getSaldo()); %></td>
                    <td><a href="buatKartuATM.jsp?id=<% out.println(t.getRekening()); %>">Create ATM</a></td>
                </tr>
                <%
                    }
                %>
            </table>

        </center>
    </body>
</html>
