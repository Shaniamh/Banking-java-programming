<%-- 
    Document   : updateNasabah
    Created on : Apr 15, 2018, 4:37:07 PM
    Author     : ASUS
--%>

<%@page import="model.Nasabah"%>
<%@page import="services.admin.NasabahService"%>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>

<%
    String name = request.getParameter("nasabahName");
    String pass = request.getParameter("password");
    Long id = Long.valueOf(request.getParameter("idNasabah"));
    Nasabah nasabah = new Nasabah();
    nasabah.setUserName(name);
    nasabah.setPassword(pass);
    nasabah.setId(id);
    boolean result = NasabahService.getInstance().update(nasabah, nasabah.getId());
    if(result == true)
        response.sendRedirect("listNasabah.jsp");
%>
