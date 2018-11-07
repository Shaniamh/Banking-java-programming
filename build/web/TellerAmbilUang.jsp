<%-- 
    Document   : TellerAmbilUang
    Created on : Apr 17, 2018, 6:29:00 AM
    Author     : ASUS
--%>

<%@page import="services.admin.TabunganService"%>
<%@page import="model.Tabungan"%>
<%
    String string = String.valueOf(session.getAttribute("noRekeningLoginTeller"));
    Long id = Long.valueOf(string);
    Tabungan tabungan = TabunganService.getInstance().getById(id);
    Long uang = Long.valueOf(request.getParameter("uang"));
    
    tabungan.setSaldo(tabungan.getSaldo()-uang);
    
    TabunganService.getInstance().update(tabungan, id); 

    response.sendRedirect("listTabunganByIdNasbah.jsp");
%>
