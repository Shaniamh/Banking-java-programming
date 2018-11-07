<%-- 
    Document   : deleteNasabah
    Created on : Apr 15, 2018, 3:27:41 PM
    Author     : ASUS
--%>

<%@page import="services.admin.NasabahService"%>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>

<%
    boolean m = NasabahService.getInstance().delete(n.getId());
    
    if(m == true)    
        response.sendRedirect("listNasabah.jsp");
%>