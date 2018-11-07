<%-- 
    Document   : transferOnline
    Created on : Apr 17, 2018, 3:22:54 AM
    Author     : ASUS
--%>
<%@page import="model.Tabungan"%>
<%@page import="services.admin.TabunganService"%>
<jsp:useBean id="t" class="model.Tabungan"></jsp:useBean>
<jsp:setProperty property="*" name="t"/>

<%
    //Tabungan tabungan = TabunganService.getInstance().getById(t.getRekening());
    //session.getAttribute("noRekTerpilih");
    //out.println();
    //Nasabah orang = NasabahService.getInstance().getById(n.getId());
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Online</title>
    </head>
    <body>
        <h2>Nomor Rekening : <%= session.getAttribute("noRekTerpilih") %> </h2>
        <center>
            <form action="transferOnline.jsp" method="POST">
                <table>
                    <tr>
                        <td>No Rek Tujuan</td>
                        <td> : <input type="number" name="rekTujuan"></td>
                    </tr>
                    <tr>
                        <td>Jumlah Transfer</td>
                        <td> : <input type="number" name="totalTransfer"></td>
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
