<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%
    String sk = (String)session.getAttribute("key_");
    String s = "PAID";
    try{
    Connection con = DbConnector.getConnection();
    Statement st = con.createStatement();
    int i = st.executeUpdate("update plan set payment ='" + s + "' where key_ = '"+sk+"' ");
    
    if(i!=0){
    response.sendRedirect("mytour.jsp?Updated sucess..!");
            }else{
    response.sendRedirect("mytour.jsp?Updation fails..!");
    }
    }
    catch(Exception e)
    {
        out.print(e.toString());
    }
    

%>