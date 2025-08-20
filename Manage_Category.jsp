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
				<li class="colorlib-active" style="font-size:20px; font-weight: bold;"><a href="Admin_Home.jsp">Home</a></li>
				<li class="colorlib-active" style="font-size:20px; font-weight: bold;"><a href="Admin_Home.jsp">Home</a></li>
					<li style="font-size:15px; font-weight: bold;"><a href="Manage_Users.jsp">View &  Authorized Users</a></li>
					<li style="font-size:15px; font-weight: bold;"><a href="Manage_Category.jsp">Add & View Category</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="Add_Products.jsp">Add Products</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_Products_Reviews.jsp">View All Product Rating & Reviews</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="Sentiment_Similarity1.jsp">Sentiment Similarity by Reviews</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_All.jsp">View All Recommended Product & Rank Result</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="Graph.jsp">Result</a></li>
                                       
                                        
                                        <li style="font-size:15px; font-weight: bold;"><a href="index.jsp">Logout</a></li>
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
                    }
                    th{
                        font-size: 20px;
                        color: #c80000;
                    }
                </style>
		<div id="colorlib-main">
			<aside id="colorlib-hero" class="js-fullheight">
				<div class="flexslider js-fullheight">
                                   <h2 style="color:darkcyan;font-size: 25px;letter-spacing: 0.3px; margin-top: 10%;margin-left: 40%; "><strong>Add & View Category</strong></h2>
                                   <div style="margin-left:30%;">
                                   <form action="Add_Category.jsp">
                                       <label style="font-size:15px; color:darkred; padding-right: 20px;"><strong>Add Category</strong></label><input type="text" name="cat" style="padding-left:20px;" />
                                       <input type="submit" value="ADD">
                                       </table>
                                   </form></div>
                                    <table style="margin-top: 20px;;margin-left: 20%; width: 70%;">
                                        <tr>
                                            <th>Id</th>
                                            <th>User Name</th>
                                            <th>Remove</th>
                                        </tr>
                                        <%
                                            Connection con=new DB().Connect();
                                            PreparedStatement ps=con.prepareStatement("Select * from category ");
                                            ResultSet r=ps.executeQuery();
                                            while(r.next()){
                                        %>
                                        <tr>
                                            <td><%=r.getString("id")%></td>
                                            <td><%=r.getString("category_name")%></td>
                                            <td><a href="delete_cat.jsp?id=<%=r.getString("id")%>"><img src="images/deleteicon.jpg" alt="" style="width: 30px; height: 30px;"></a></td>
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

