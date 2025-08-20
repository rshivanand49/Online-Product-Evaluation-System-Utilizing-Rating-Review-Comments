<%--
    Document   : CBFA
    Created on : Jan 25, 2018, 12:56:04 PM
    Author     : David-Pc
--%>
<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%@page import="CBF.Stem"%>
<%@page import="CBF.Stopwords"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Content Based Filtering Algorithm</title>
    </head>
    <
    <body>
        <h1 align="center">Content Based Filtering Algorithm</h1>
           <h3 class="h4" align="center" style=" color: white; font-size: 19px; margin-bottom: 600px;  margin-top: 100px; margin-left: -80px;"> Positive Vibes based on Posts</h3>
							
           
                 
                
                <style>
                      table,td,tr,th{
                           border-collapse: collapse;
                           border: 2px solid black;
                           text-align: center;
                           font-weight: bold;
                           padding: 5px;
                          
                           
                      }
                      td{
                          font-size: 15px;
                          color:black;
                      }
                      th{
                          font-size: 18px;
                          color: #c80000;
                      }

                  </style>
                   <table style="margin-top:-600px; width: 50%; margin-left:300px;">
                       <tr>
                           <th>Product ID</th>
                           <th>Product Name</th>
                           <th>Price</th>
                           <th>Feedback</th>
                           <th>Rating</th>
                          
                           
                           <th>Negative Word</th>
                        
                        </tr>
                      
                       					 
    <%
                         Connection con=new DB().Connect();
                         PreparedStatement query=con.prepareStatement("select * from recommend");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next()){
                            String feedback=rs.getString("feedback");
                            System.out.println(feedback);
                             String sno=rs.getString("sno");
                         %>
                         
                        <%
                            System.out.println("*******");
            String word[]=feedback.split(" ");
            for(int i=0;i<word.length;i++)
                {
                PreparedStatement query1=con.prepareStatement("select * from negative where neg='"+word[i]+"'  ");
               System.out.println(query1);
                ResultSet rs1=query1.executeQuery();
                if(rs1.next())
                {
                   
                    
                            %>
                               
                           <tr>
                           <td><%=rs.getString("pid")%></td>
                            <td><%=rs.getString("pname")%></td>
                           <td><%=rs.getString("price")%></td>
                           <td><%=rs.getString("feedback")%></td>
                           <td><%=rs.getString("rating")%></td>
                             
                           <td><label style="color:red"><%out.print(word[i]); %></label></td>
                      
                          
                         </tr>  
                            <%
                      PreparedStatement query4=con.prepareStatement("update recommend set status='Negative' where sno='"+rs.getString("sno")+"'");
                      query4.executeUpdate();
                }}
                     
                         

}%></table>  
    <p align="center"><a href="Admin_Home.jsp">Click To Back</a></p>
            <br><br><br><br>
    </body>
</html>