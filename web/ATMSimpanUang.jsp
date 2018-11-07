<%-- 
    Document   : ATMSimpanUang
    Created on : Apr 17, 2018, 7:34:34 AM
    Author     : ASUS
--%>

<%@page import="services.admin.TabunganService"%>
<%@page import="model.Tabungan"%>
<%@page import="services.admin.KartuATMService"%>
<%@page import="model.kartuATM"%>
<%
    String string = String.valueOf(session.getAttribute("nomorKartuATMLogin"));
    Long id = Long.valueOf(string);
    
    kartuATM kartu = KartuATMService.getInstance().getById(id);
    
    Long uang = Long.valueOf(request.getParameter("uang"));
    
    Tabungan tabungan = kartu.getTabungan();
    tabungan.setSaldo(tabungan.getSaldo()+uang);
    
    kartu.setTabungan(tabungan);
    out.println(kartu.getTabungan().getSaldo());
    
    TabunganService.getInstance().update(tabungan, kartu.getTabungan().getRekening());
    KartuATMService.getInstance().update(kartu, id);
    
    
    response.sendRedirect("listTabunganByIdNasbah.jsp");
%>

