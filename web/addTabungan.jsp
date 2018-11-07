<%-- 
    Document   : addTabungan
    Created on : Apr 15, 2018, 8:22:17 PM
    Author     : ASUS
--%>

<%@page import="model.Nasabah"%>
<%@page import="model.Tabungan"%>
<%@page import="services.admin.NasabahService"%>
<%@page import="services.admin.TabunganService"%>
<%
    String name = request.getParameter("userName");
    String password = request.getParameter("password");
    Long saldoku = Long.valueOf(request.getParameter("saldo"));
    Long id = Long.valueOf(request.getParameter("idNasabah"));
    
    Nasabah nasabah = NasabahService.getInstance().getById(id);
    Tabungan tabungan = new Tabungan();
    
    tabungan.setNasabah(nasabah);
    tabungan.setUserName(name);
    tabungan.setPassword(password);
    tabungan.setSaldo(saldoku);
    
    TabunganService.getInstance().register(tabungan);
    response.sendRedirect("listNasabah.jsp");

%>