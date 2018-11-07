<%-- 
    Document   : listTabunganByIdNasbah
    Created on : Apr 15, 2018, 9:07:12 PM
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
        <a href="systemAdminTabungan.jsp" >Kembali ke Sistem Admin Tabungan</a>
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
                    <th>Update</th>
                    <th>Delete</th>
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
                    <td><a href="updateTabunganForm.jsp?id=<% out.println(t.getRekening()); %>">Update</a></td>
                    <td><a href="deleteTabungan.jsp?id=<% out.println(t.getRekening()); %>">Delete</a></td>
                </tr>
                <%
                    }
                %>
            </table>

        </center>
    </body>
</html>
