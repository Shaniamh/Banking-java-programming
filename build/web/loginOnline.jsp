<%-- 
    Document   : loginOnline
    Created on : Apr 17, 2018, 1:47:59 AM
    Author     : ASUS
--%>

<%@page import="services.admin.TabunganService"%>
<%@page import="model.Tabungan"%>

<%
    String name = request.getParameter("userName");
    String pass = request.getParameter("password");
    
      Tabungan tabungan = new Tabungan();
      Tabungan tabunganNew = new Tabungan();
      tabungan.setUserName(name);
      tabungan.setPassword(pass);
//    if(NasabahService.getInstance().login(nasabah) == null)
//        response.sendRedirect("gagalLoginOnline.jsp");
    
      tabunganNew = TabunganService.getInstance().login(tabungan);
      //out.println(tabunganNew.getRekening()+"|");
      session.setAttribute("noRekTerpilih", Long.valueOf(tabunganNew.getRekening()));
      
%>

<html>
    <head>
	<meta charset="UTF-8">
	<title>Tabungan anda</title>
	<link rel="stylesheet" href="style/index_style.css">
    
</head>
<body>
	<a href="systemNasabah.jsp"><img src="arr.png"></a>
	<div id="titulo">
		<p id="header">Selamat datang <% out.println(tabunganNew.getUserName()); %></p>
	</div>

	<header>
		

		<div class="contenedor" id="tre">
			<a href="cekSaldo.jsp"><img class="icon" src="pictures/cek.png"></a>
			<p class="texto">Cek Saldo</p>
		</div>

		<div class="contenedor" id="cuatro">
			<a href="transferOnlineForm.jsp"><img class="icon" src="pictures/tran.png"></a>
			<p class="texto">Transfer Online</p>
		</div>
	</header>

	

</body>
</html>

