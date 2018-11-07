<%-- 
    Document   : ATMAmbilUangForm
    Created on : Apr 17, 2018, 7:31:57 AM
    Author     : ASUS
--%>

<%@page import="services.admin.KartuATMService"%>
<%@page import="model.kartuATM"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
                String string = String.valueOf(session.getAttribute("nomorKartuATMLogin"));
                Long id = Long.valueOf(string);
                kartuATM kartu = KartuATMService.getInstance().getById(id);
               
            %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Ambil Uang ATM</title>
    </head>
    <body>
        <center>
            <h1>Form ATM Ambil Uang <% out.println(kartu.getJenisATM().toString()); %></h1>
            <form action="ATMAmbilUang.jsp" method="POST">
                <table>
                    <tr>
                        <td>Nominal Uang</td>
                        <td> : <input type="numer" name="uang"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit"></td>
                    </tr>
                </table>
            </form>
        </center>
    </body>
</html>
