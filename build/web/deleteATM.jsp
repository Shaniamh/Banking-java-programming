<%-- 
    Document   : deleteATM
    Created on : Apr 17, 2018, 4:06:08 AM
    Author     : ASUS
--%>

<%@page import="services.admin.KartuATMService"%>
        <%
            String string = String.valueOf(session.getAttribute("noKartuATM"));
            Long no = Long.valueOf(string);
            
            out.println(no);
            
            boolean result = KartuATMService.getInstance().delete(no);
//                            
            if(result == true){
                response.sendRedirect("listKartuATM.jsp");
            }
         %>
