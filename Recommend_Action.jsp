<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
    String uname=request.getParameter("uname");
    String uid=request.getParameter("uid");
    String pid=request.getParameter("pid");
    String pname=request.getParameter("pname");
    String price=request.getParameter("price");
    String rating=request.getParameter("rating");
    String feedback=request.getParameter("feedback");
    String fname=request.getParameter("fname");
    Connection con=new DB().Connect();
    PreparedStatement p=con.prepareStatement("insert into recommend(uid,uname,pid,pname,price,rating,feedback,fname)values('"+uid+"','"+uname+"','"+pid+"','"+pname+"','"+price+"','"+rating+"','"+feedback+"','"+fname+"') ");
    p.executeUpdate();
    System.out.println(p);
 PreparedStatement p1=con.prepareStatement("update add_product set rating='"+rating+"',feedback='"+feedback+"',buyerid='"+uid+"',buyername='"+uname+"' where pid='"+pid+"' and pname='"+pname+"' ");
    p1.executeUpdate();
    System.out.println(p1);
    out.println("<script>"
        +"alert('Product Recommended Successfully.')"
        +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Search_Products.jsp");
    rd.include(request, response);
%>