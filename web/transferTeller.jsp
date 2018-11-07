<%-- 
    Document   : transferTeller
    Created on : Apr 17, 2018, 6:20:40 AM
    Author     : ASUS
--%>

<%@page import="model.Tabungan"%>
<%@page import="services.admin.TabunganService"%>
<%
    Long rTujuan = Long.valueOf(request.getParameter("rekTujuan"));
    Long tTransfer = Long.valueOf(request.getParameter("totalTransfer"));
    String string = String.valueOf(session.getAttribute("noRekeningLoginTeller"));
    Long idRekeningPengirim = Long.valueOf(string);
    
    Tabungan tabunganPenerima = TabunganService.getInstance().getById(rTujuan);
    Tabungan tabunganPengirim =  TabunganService.getInstance().getById(idRekeningPengirim);
    
    out.println("rekening tujuan : "+tabunganPenerima.getUserName()+"  rekening pengirim : " + tabunganPengirim.getUserName());
    
    tabunganPenerima.setSaldo((tabunganPenerima.getSaldo()+tTransfer));
    tabunganPengirim.setSaldo(tabunganPengirim.getSaldo()-tTransfer);
    
    TabunganService.getInstance().update(tabunganPenerima, tabunganPenerima.getRekening());
    TabunganService.getInstance().update(tabunganPengirim, tabunganPengirim.getRekening());
    
    response.sendRedirect("listTabunganByIdNasbah.jsp");
%>
