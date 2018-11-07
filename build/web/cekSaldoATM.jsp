<%-- 
    Document   : cekSaldoATM
    Created on : Apr 17, 2018, 7:22:09 AM
    Author     : ASUS
--%><%@page import="model.kartuATM"%>
<%@page import="model.Tabungan"%>
<%@page import="services.admin.KartuATMService"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Saldo Anda : 
            <%
                String string = String.valueOf(session.getAttribute("nomorKartuATMLogin"));
                Long id = Long.valueOf(string);
                kartuATM kartu = KartuATMService.getInstance().getById(id);
                out.println(kartu.getNoKartu()+ "=   ");
                out.println(kartu.getTabungan().getSaldo());
            %></h1>
    </body>
</html>
