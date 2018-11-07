<%-- 
    Document   : loginTeller
    Created on : Apr 17, 2018, 5:30:00 AM
    Author     : ASUS
--%>
<%@page import="services.admin.TabunganService"%>
<%@page import="model.Tabungan"%>
<%
    Long noRekening = Long.valueOf(request.getParameter("noRek")); 
    String pass = request.getParameter("password");
    
    Tabungan tabungan = new Tabungan();
    Tabungan tabunganNew = new Tabungan();
    tabungan.setRekening(noRekening);
    tabungan.setUserName(TabunganService.getInstance().getById(noRekening).getUserName());
    tabungan.setPassword(pass);
    
    tabunganNew = TabunganService.getInstance().login(tabungan);
    
    session.setAttribute("noRekeningLoginTeller", tabunganNew.getRekening());
    
    
    if(tabunganNew != null)
        response.sendRedirect("loginTellerSukses.jsp");
    else
        response.sendRedirect("loginTellerGagal.jsp");
    
%>
