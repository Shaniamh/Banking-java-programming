<%-- 
    Document   : addNasabah
    Created on : Apr 15, 2018, 11:38:40 AM
    Author     : ASUS
--%>
<%@page import="services.admin.NasabahService"%>
<%@page import="model.Nasabah"%>
<%
    String name = request.getParameter("nasabahName");
    String pass = request.getParameter("password");
    Nasabah nasabah = new Nasabah();
    nasabah.setUserName(name);
    nasabah.setPassword(pass);
    NasabahService.getInstance().register(nasabah);
    response.sendRedirect("listNasabah.jsp");
%>
