<%-- 
    Document   : ATMAmbilUang
    Created on : Apr 17, 2018, 8:16:50 AM
    Author     : ASUS
--%>

<%@page import="services.admin.KartuATMService"%>
<%@page import="model.kartuATM"%>
<%@page import="model.kartuATM"%>
<%@page import="services.admin.TabunganService"%>
<%@page import="model.Tabungan"%>
<%
    String string = String.valueOf(session.getAttribute("nomorKartuATMLogin"));
    Long id = Long.valueOf(string);
    
    kartuATM kartu = KartuATMService.getInstance().getById(id);
    
    Long uang = Long.valueOf(request.getParameter("uang"));
    Tabungan tabungan = kartu.getTabungan();
    
    if(uang <= kartu.limit(kartu.getJenisATM()))
        tabungan.setSaldo(tabungan.getSaldo()-uang);
    else{
        response.sendRedirect("ATMAmbilUangForm.jsp");
        out.println("Melebihi Batas Jenis Kartu ATM");
    }
        
    TabunganService.getInstance().update(tabungan, kartu.getTabungan().getRekening());
    KartuATMService.getInstance().update(kartu, id);

    response.sendRedirect("listTabunganByIdNasbah.jsp");
%>
