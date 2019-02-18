<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            String title = request.getParameter("title");
            int nop = Integer.parseInt(request.getParameter("nop"));
            float sp = Float.valueOf(request.getParameter("sp"));
            String turi = request.getParameter("turi");
            String lng = request.getParameter("lng");
            String lat = request.getParameter("lat");
            String imguri = "images/DSC7104.jpg";
            
            try{
            Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into `places` (`id`, `title`, `nop`, `sp`, `tUri`, `lng`, `lat`, `imgUri`) values ('0','"+title+"','"+nop+"','"+sp+"','"+turi+"','"+lng+"','"+lat+"','"+imguri+"')");
            if (i != 0) {

               response.sendRedirect("packages.jsp?msg=Package_Added!");

                
            } else {
               response.sendRedirect("packages.jsp?msgr=Package_Not_Added");
            }
            }catch(Exception e){out.print(e.toString());
            }
            %>