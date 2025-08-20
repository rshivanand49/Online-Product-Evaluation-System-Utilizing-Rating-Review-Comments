<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
    String act=request.getParameter("act");
    String pid=request.getParameter("pid");
    String pname=request.getParameter("pname");
    System.out.println(act+" "+pid+" "+pname);
    Connection con=new DB().Connect();
    if(act.equalsIgnoreCase("like"))
    {
        PreparedStatement p=con.prepareStatement("select * from add_product where pid='"+pid+"' and pname='"+pname+"' ");
        System.out.println(p);
        ResultSet r=p.executeQuery();
        if(r.next()){
            int count=r.getInt("likes")+1;            
            System.out.println(p);
            System.out.println(count);
            PreparedStatement p1=con.prepareStatement("update add_product set likes='"+count+"' where pid='"+pid+"' and pname='"+pname+"' ");
            System.out.println(p1);
            p1.executeUpdate();
            System.out.println(p1);
        }  
    }
    else
    {
            PreparedStatement p=con.prepareStatement("select * from add_product where pid='"+pid+"' and pname='"+pname+"' ");
            ResultSet rs=p.executeQuery();
            if(rs.next()){
            int count1=rs.getInt("dislike")+1;
            PreparedStatement p2=con.prepareStatement("update add_product set dislike='"+count1+"' where pid='"+pid+"' and pname='"+pname+"' ");
            p2.executeUpdate();
            System.out.println(p2);
            
    }}
   response.sendRedirect("Search_Products.jsp");
%>