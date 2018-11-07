<%-- 
    Document   : ATMTransferUang
    Created on : Apr 17, 2018, 7:48:02 AM
    Author     : ASUS
--%>

<%@page import="services.admin.TabunganService"%>
<%@page import="model.Tabungan"%>
<%@page import="services.admin.KartuATMService"%>
<%@page import="model.kartuATM"%>
<%
    Long rTujuan = Long.valueOf(request.getParameter("rekTujuan"));
    Long tTransfer = Long.valueOf(request.getParameter("totalTransfer"));
    
    String string = String.valueOf(session.getAttribute("nomorKartuATMLogin"));
    Long id = Long.valueOf(string);
    
    kartuATM kartuPengirim = KartuATMService.getInstance().getById(id);
    
    Tabungan tabunganPenerima = TabunganService.getInstance().getById(rTujuan);
    Tabungan tabunganPengirim =  TabunganService.getInstance().getById(kartuPengirim.getTabungan().getRekening());
    
    out.println("rekening tujuan : "+tabunganPenerima.getUserName()+"  rekening pengirim : " + tabunganPengirim.getUserName());
    
    tabunganPenerima.setSaldo((tabunganPenerima.getSaldo()+tTransfer));
    tabunganPengirim.setSaldo(tabunganPengirim.getSaldo()-tTransfer);
    
    TabunganService.getInstance().update(tabunganPenerima, tabunganPenerima.getRekening());
    TabunganService.getInstance().update(tabunganPengirim, tabunganPengirim.getRekening());
    
    response.sendRedirect("listTabunganByIdNasbah.jsp");
%>
