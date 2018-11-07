<%-- 
    Document   : listKartuATM
    Created on : Apr 16, 2018, 11:59:13 PM
    Author     : ASUS
--%>

<%@page import="services.admin.KartuATMService"%>
<%@page import="java.util.List"%>
<%@page import="model.kartuATM"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Kartu ATM</title>
    </head>
    <body>
        <a href="systemAdminATM.jsp">System Admin ATM</a>
        <center>
            <h1>List Kartu ATM</h1>
            <table border="1" width="90%">
                <tr>
                    <th>ID Nasabah</th>
                    <th>Nama Nasabah</th>
                    <th>No Rekening Tabungan</th>
                    <th>No Kartu ATM</th>
                    <th>PIN Kartu ATM</th>
                    <th>Jenis Kartu ATM</th>
                    <th>Saldo</th>
                    <th>Hapus Kartu ATM</th>
                </tr>
                <%
                    List <kartuATM> listKartu = KartuATMService.getInstance().getAll();
                    for(kartuATM k : listKartu){
                %>
                
                <tr>
                    <td><% out.println(k.getTabungan().getNasabah().getId()); %></td>
                    <td><% out.println(k.getTabungan().getNasabah().getUserName()); %></td>
                    <td><% out.println(k.getTabungan().getRekening()); %></td>
                    <td><% out.println(k.getNoKartu()); %></td>
                    <td><% out.println(k.getPIN()); %></td>
                    <td><% out.println(k.getJenisATM()); %></td>
                    <td><% out.println(k.getTabungan().getSaldo()); %></td>
                    <td><% session.setAttribute("noKartuATM", k.getNoKartu()); %><a href="deleteATM.jsp">Delete</a></td>
                </tr>
                <%
                    }
                %>
            </table>

        </center>
        
    </body>
</html>
