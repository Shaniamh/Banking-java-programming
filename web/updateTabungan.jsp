<%-- 
    Document   : updateTabungan
    Created on : Apr 15, 2018, 11:37:47 PM
    Author     : ASUS
--%>
<%@page import="model.Tabungan" %>
<%@page import="services.admin.TabunganService" %>


<%
    out.println("Tes");
    Long noRek = Long.valueOf(request.getParameter("noRekening"));
    String name = request.getParameter("userName");
    String pass = request.getParameter("password");
    Long saldoku = Long.valueOf(request.getParameter("saldo"));
    
    Tabungan tabung = new Tabungan();
    
    tabung.setRekening(noRek);
    tabung.setUserName(name);
    tabung.setPassword(pass);
    tabung.setSaldo(saldoku);
    
    boolean result = TabunganService.getInstance().update(tabung, tabung.getRekening());
    if(result == true)
        response.sendRedirect("listTabunganByIdNasbah.jsp");
    
    
    out.println(tabung.getRekening());
    out.println(tabung.getUserName());
    out.println(tabung.getPassword());
    out.println(tabung.getSaldo());
%>
