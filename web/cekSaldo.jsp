<%-- 
    Document   : cekSaldo
    Created on : Apr 17, 2018, 3:48:21 AM
    Author     : ASUS
--%>

<%@page import="model.Tabungan"%>
<%@page import="services.admin.TabunganService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Saldo Tabungan</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
      <link rel="stylesheet" href="css2/style.css">
</head>
<body>
    <a href="systemNasabah.jsp"><img src="arr.png"></a>
<div class="login-form">
  <form action="">
    <header>
      <div class="photo"><img src="avatar.png" alt=""/></div>
      <div class="user-info">
        <h4>Nominal saldo 
        <% 
                String stringOobject = String.valueOf(session.getAttribute("noRekTerpilih"));
                Long id = Long.parseLong(stringOobject);
                Tabungan tabungan = TabunganService.getInstance().getById(id);
                out.println(tabungan.getUserName()+ " : Rp.  ");
                out.println(tabungan.getSaldo());
            %></h4>
      </div>
    </header>
    <section>
    </section>
    <footer>
    </footer>
  </form>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script  src="js2/index.js"></script>
</body>

</html>

