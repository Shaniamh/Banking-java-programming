<%-- 
    Document   : loginTellerSukses
    Created on : Apr 17, 2018, 5:54:30 AM
    Author     : ASUS
--%>

<%@page import="model.Tabungan"%>
<%@page import="services.admin.TabunganService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String string = String.valueOf(session.getAttribute("noRekeningLoginTeller"));
    Long noRekening = Long.valueOf(string);
    Tabungan tabungan =TabunganService.getInstance().getById(noRekening);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Teller Sukses</title>
    </head>
    <body>
        <center>
            <h1>Selamat Datang Tabungan : <% out.println(tabungan.getUserName()); %></h1>
            <a href="cekSaldoTeller.jsp">Cek Saldo</a>
            <a href="transferTellerForm.jsp">Transfer Uang</a>
            <a href="TellerAmbilUangForm.jsp">Ambil Uang</a>
            <a href="TellerSimpanUangForm.jsp">Simpan Uang</a>

        </center>
        
    </body>
</html>
