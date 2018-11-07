<%-- 
    Document   : loginATMSukses
    Created on : Apr 17, 2018, 7:03:49 AM
    Author     : ASUS
--%>

<%@page import="model.kartuATM"%>
<%@page import="services.admin.KartuATMService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String string = String.valueOf(session.getAttribute("nomorKartuATMLogin"));
    Long noKartu = Long.valueOf(string);
    kartuATM kartu = KartuATMService.getInstance().getById(noKartu);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login ATM Sukses</title>
    </head>
    <body>
        <center>
            <h1>Login ATM Sukses No Kartu : <% out.println(kartu.getNoKartu()); %> </h1>
            <a href="cekSaldoATM.jsp">Cek Saldo</a>
            <a href="ATMSimpanUangForm.jsp">Simpan Uang</a>
            <a href="ATMTransferUangForm.jsp">Transfer Uang</a>
            <a href="ATMAmbilUangForm.jsp">Ambil Uang</a>

        </center>
    </body>
</html>
