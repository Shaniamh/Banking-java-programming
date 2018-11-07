<%-- 
    Document   : addKartuATM
    Created on : Apr 16, 2018, 8:10:20 PM
    Author     : ASUS
--%>

<%@page import="model.Nasabah"%>
<%@page import="model.Tabungan"%>
<%@page import="model.kartuATM"%>
<%@page import="model.kartuATM"%>
<%@page import="services.admin.KartuATMService"%>
<%@page import="services.admin.NasabahService"%>
<%@page import="services.admin.TabunganService"%>
<%
      Long rek = Long.valueOf(request.getParameter("noRek"));
      String jenis = request.getParameter("tipe");
      Long pinKu = Long.valueOf(request.getParameter("pin"));
      
      Tabungan tabung = TabunganService.getInstance().getById(rek);
      kartuATM kartu = new kartuATM();
      
      kartu.setTabungan(tabung);
      kartu.setPIN(pinKu);
      
      if(jenis.equalsIgnoreCase(kartu.getJenisATM().GOLD.toString()))
        kartu.setJenisATM(kartu.getJenisATM().GOLD);
      if(jenis.equalsIgnoreCase(kartu.getJenisATM().PLATINUM.toString()))
        kartu.setJenisATM(kartu.getJenisATM().PLATINUM);
      if(jenis.equalsIgnoreCase(kartu.getJenisATM().SILVER.toString()))
        kartu.setJenisATM(kartu.getJenisATM().SILVER);
    
      boolean result = KartuATMService.getInstance().register(kartu);
    
    if(result == true)
        response.sendRedirect("listKartuATM.jsp");
    //kartuATM kartu = new kartuATM();
//    
//    Long noRek = Long.valueOf(request.getParameter("noRek"));
//    String name = request.getParameter("namaUser");
//    String jenis = request.getParameter("tipe");
//    Long pinKu = Long.valueOf(request.getParameter("pin"));
//    
//    Tabungan tabung = TabunganService.getInstance().getById(noRek);
//    
//    
//    
//    kartu.setPIN(pinKu);
//    kartu.setTabungan(tabung);
//    //kartu.setNoKartu(noKartu);
//    
//    
%>
