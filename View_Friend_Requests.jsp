<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Detecting and Characterizing Extremist Reviewer Groups in Online Product Reviews</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<div id="colorlib-page" >
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight" style="width: 400px;">
			<h1 id="colorlib-logo" style="color:#FFC300;"><a href="#"></a>Online Product </h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul >
					<li style="font-size:20px; font-weight: bold;"><a href="User_Home.jsp">Home</a></li>
					<li style="font-size:15px; font-weight: bold;"><a href="Search_Friends.jsp">Search & View Friends</a></li>
					<li  class="colorlib-active" style="font-size:15px; font-weight: bold;"><a href="View_Friend_Requests.jsp">View & Delete Friend Requests</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="Search_Products.jsp">Search Product</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_Recommend_Products.jsp">View All Recommended Products</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="index.jsp">Logout</a></li>
                                        
				</ul>
			</nav>
		</aside>
                <style>
                    table,td,tr,th{
                         border-collapse: collapse;
                         border: 2px solid gray;
                         text-align: center;
                         font-weight: bold;
                         padding: 5px;
                    }
                    td{
                        font-size: 15px;
                        color: #c80000;
                    }
                    input{
                        color:black;
                    }
                    th{
                        color:#002752;
                    }
                </style>
		<div id="colorlib-main">
			<aside id="colorlib-hero" class="js-fullheight">
				<div class="flexslider js-fullheight">
                                   <h2 style="color:darkcyan;font-size: 25px;letter-spacing: 0.3px; margin-top: 10%;margin-left: 40%; "><strong>View & Delete Friend Requests</strong></h2>
                                    <table style="margin-top: 20px;;margin-left: 20%; width: 80%;">
                                        <tr>
                                            <th>User Id</th>
                                            <th>User Name</th>
                                            <th>Mail Id</th>
                                            <th>Mobile</th>
                                            <th>City</th>
                                            <th>Profile Picture</th>
                                            <th>Action</th>
                                        </tr>
                                        <%
                                            String uname=(String)session.getAttribute("username");
                                            String uid=(String)session.getAttribute("userid");
                                            Connection con=new DB().Connect();
                                            PreparedStatement ps=con.prepareStatement("Select * from friend_request where fname='"+uname+"' and fid='"+uid+"' and status='waiting' ");
                                            ResultSet r=ps.executeQuery();
                                            while(r.next()){
                                        %>
                                        <tr>
                                            <td><%=r.getString("uid")%></td>
                                            <td><%=r.getString("uname")%></td>
                                            <td><%=r.getString("mail")%></td>
                                            <td><%=r.getString("mobile")%></td>
                                            <td><%=r.getString("city")%></td>
                                            <td><img src="dataset/<%=r.getString("fpic")%>" alt="" style="width: 50px; height: 30px; padding: 5px;"></td>
                                            <td><a href="Authorize_Request.jsp?uid=<%=r.getString("uid")%>&&uname=<%=r.getString("uname")%>"><img src="images/Authorize.png" alt="" style="width: 30px; height: 30px;"></a> | <a href="Delete_Request.jsp?uid=<%=r.getString("uid")%>&&uname=<%=r.getString("uname")%>"><img src="images/deleteicon.jpg" alt="" style="width: 30px; height: 30px;"></a></td>
                                            
                                        </tr>
                                        <%}%>
                                    </table>
			  	</div>
			</aside>
                </div>
        </div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Sticky Kit -->
	<script src="js/sticky-kit.min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="js/main.js"></script>

	</body>
</html>

