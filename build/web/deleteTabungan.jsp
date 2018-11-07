<%-- 
    Document   : deleteTabungan
    Created on : Apr 15, 2018, 10:21:24 PM
    Author     : ASUS
--%>

<%--
    ada yang salah, seharuse n.getid iku nge return id nasabah, tapi nge return no rekening
--%>

<%@page import="services.admin.NasabahService"%>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>
<%@page import="services.admin.TabunganService"%>
<jsp:useBean id="t" class="model.Tabungan"></jsp:useBean>
<jsp:setProperty property="*" name="t"/>

<%
    out.println(n.getId());
    boolean m = TabunganService.getInstance().delete(n.getId());
    
    if(m == true)    
        response.sendRedirect("listTabunganByIdNasbah.jsp");
%>
