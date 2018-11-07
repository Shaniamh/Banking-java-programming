<%-- 
    Document   : loginATM
    Created on : Apr 17, 2018, 6:46:59 AM
    Author     : ASUS
--%>

<%@page import="services.admin.KartuATMService"%>
<%@page import="model.kartuATM"%>
<%
    Long nomorKartu = Long.valueOf(request.getParameter("noKartu"));
    Long pin = Long.valueOf(request.getParameter("password"));
    
    kartuATM kartu = new kartuATM();
    kartuATM kartu2 = new kartuATM();
    
    kartu.setNoKartu(nomorKartu);
    kartu.setPIN(pin);
    
    kartu2 = KartuATMService.getInstance().login(kartu);
    
    session.setAttribute("nomorKartuATMLogin", kartu2.getNoKartu());
    
    if(kartu2 != null)
        response.sendRedirect("loginATMSukses.jsp");
    else
        response.sendRedirect("loginATMGagal.jsp");
%>
