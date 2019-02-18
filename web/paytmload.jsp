<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String key_ = request.getParameter("key_");
session.setAttribute("key_", key_);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Make Payment</title>
        <style>
            .inpt{
                width: 250px;
                border: 2px solid skyblue;
                border-radius: 4px;
                padding: 5px;
            }
            .inptBtn{
                width: 264px;
                border: 2px solid skyblue;
                border-radius: 4px;
                padding: 5px;
                background: skyblue;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div>
            <form action="pay.jsp" method="GET">
            <table style="width: 100%; text-align: center;">
                <tr>
                    <td><img src="images/Paytm_logo.png" width="400px" height="150px"/></td>
                </tr>
                <tr>
                    <td><img src="images/paytm_loading.gif" width="50px" height="50px"/></td>
                </tr>
                <tr>
                    <td><h3>PAY <b style="color: red;">Rs.<%=request.getParameter("money")%></b> TO PAYTM</h3></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="Mobile" class="inpt" required/></td>
                </tr>
                <tr>
                    <td><input type="password" placeholder="Password" class="inpt" required/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="PAY" class="inptBtn"/></td>
                </tr>
            </table>
            </form>
        </div>
    </body>
</html>
