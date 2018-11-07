<%-- 
    Document   : transaksiATM
    Created on : Apr 17, 2018, 1:36:06 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaksi ATM</title>
    </head>
    <body>
        <a href="systemNasabah.jsp"><img src="arrow.png"></a>
        <center>
            <h1>Transaksi ATM</h1>
            <form action="loginATM.jsp" method="post">
                <table>
                    <tr>
                        <td>Nomor Kartu ATM</td>
                        <td> : <input type="number" name="noKartu"></td>
                    </tr>
                    <tr>
                        <td>PIN ATM</td>
                        <td> : <input type="password" name="password"></td>
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
