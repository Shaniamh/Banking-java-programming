<%-- 
    Document   : listNasabah
    Created on : Apr 15, 2018, 12:27:31 PM
    Author     : ASUS
--%>

<%@page import="model.Tabungan"%>
<%@page import="services.admin.TabunganService"%>
<%@page import="services.admin.NasabahService"%>
<%@page import="java.util.List"%>
<%@page import="model.Nasabah"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <a href="systemAdmin.jsp"><img src="arr.png"></a>
        <a href="buatTabungan.jsp"><img src="arr2.png"></a>
    </head>
    <body style="background-color: #ebebeb;>
          
          
       // <a href="#"></a>
        <center>
            <h1>List Nasabah</h1>
            <table border="1">
                
                <tr>
                    <th>ID</th>
                    <th>Nama Nasabah</th>
                    <th>Password Nasabah</th>
                    <th>Update</th>
                    <th>Delete</th>
                    <th>Buat Tabungan</th>
                </tr>
                <%
                    List<Nasabah> listNasabah = NasabahService.getInstance().getAll();
                    for(Nasabah n : listNasabah){
                %>
                <tr>
                    <td><% out.println(n.getId()); %></td>
                    <td><% out.println(n.getUserName()); %></td>
                    <td><% out.println(n.getPassword()); %></td>
                    <td><a href="updateNasabahGetId.jsp?id=<% out.println(n.getId()); %>">Update</a></td>
                    <td><a href="deleteNasabah.jsp?id=<% out.println(n.getId()); %>">Delete</a></td>
                    <td><a href="buatTabungan.jsp?id=<% out.println(n.getId()); %>">Buat Tabungan</a></td>
                    
                </tr>
                <% }
                    
                %>
            </table>
<%--<jsp:include page="updateNasabahForm.jsp">
                        <jsp:param name="idNasabah" value="<%= n.getId() %>"/>
                    </jsp:include>--%>
        </center>
    </body>
</html>
