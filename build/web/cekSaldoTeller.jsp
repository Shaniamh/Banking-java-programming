<%-- 
    Document   : cekSaldoTeller
    Created on : Apr 17, 2018, 6:11:49 AM
    Author     : ASUS
--%><%@page import="model.Tabungan"%>
<%@page import="services.admin.TabunganService"%>


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
                String string = String.valueOf(session.getAttribute("noRekeningLoginTeller"));
                Long id = Long.valueOf(string);
                Tabungan tabungan = TabunganService.getInstance().getById(id);
                out.println(tabungan.getUserName()+ "=   ");
                out.println(tabungan.getSaldo());
            %></h1>
    </body>
</html>
