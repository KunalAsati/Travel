<%@page import="java.util.Random"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
     //  userid, season, str, end, intr, dot, dy, nop, status_, tcost
            String me = request.getParameter("userid");
            String ss = request.getParameter("str");
            String str = request.getParameter("end");
            String end = request.getParameter("intr");
            String dot = request.getParameter("dot");
            String dy = request.getParameter("dy");
            String nop = request.getParameter("nop");
            String pref = request.getParameter("pref");
            String budget = request.getParameter("budget");
            String s = "NOT CONFIRMED";
            String t = "NOT CONFIRMED";
            String p = "NOT PAID";
            Random r = new Random();
            int ii = r.nextInt(100000-5000)+5000;
            String k = ii+"";
           Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into plan values('"+me+"','"+ss+"','"+str+"','"+end+"','"+dot+"','"+dy+"','"+nop+"','"+s+"','"+t+"','"+k+"','"+pref+"','"+p+"','"+budget+"')");
            if (i != 0) {
               response.sendRedirect("userpage.jsp?msg=Send success");
            } else {
               response.sendRedirect("userpage.jsp?msgr=Register fails");
            }
            %>