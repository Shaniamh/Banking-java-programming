<%-- 
    Document   : transferTellerForm
    Created on : Apr 17, 2018, 6:16:57 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Rekening ku <%= session.getAttribute("noRekeningLoginTeller") %> </h1>
        <center>
            <form action="transferTeller.jsp" method="POST">
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
