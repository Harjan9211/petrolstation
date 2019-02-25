<%@ Page Language="C#" AutoEventWireup="true" CodeFile="storereport.aspx.cs" Inherits="storereport" %>


 <!DOCTYPE html>
 <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Petrol Allocation</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/orman.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />	

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">


</script>

<script type="text/javascript">

    ddsmoothmenu.init({
        mainmenuid: "templatemo_menu", //menu DIV id
        orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
        classname: 'ddsmoothmenu', //class added to menu's outer DIV
        //customtheme: ["#1c5a80", "#18374a"],
        contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
    })

</script>

<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="js/slimbox2.js"></script> 

</head>
<body id="home">

<div id="templatemo_wrapper">

	<div id="templatemo_header">
    	<div id="site_title"><a href="#">Petrol Allotment</a></div>
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="index.html"  class="current">Home</a></li>
        		        <li><a href="Default.aspx">AllotFuel </a></li>
		                <li><a href="store.aspx">ValidateAdmin</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
    </div> <!-- END of header -->
    
    <div id="templatemo_slider"><span class="sliderframe"></span>
    	 <div class="slider-wrapper theme-orman">
            <div id="slider" class="nivoSlider">
            	<img src="images/slider/01.jpg" alt="slider image 2" title="#htmlcaption" />
                <img src="images/slider/02.jpg" alt="slider image 2" />
                <a rel="nofollow" href="#">
                	<img src="images/slider/03.jpg" alt="slider image 2" title="This is an example of a caption." />
                </a>
                <img src="images/slider/04.jpg" alt="slider image 4" />
            </div>
            <div id="htmlcaption" class="nivo-html-caption">
                <strong>This</strong> is an example of a HTML caption with <a href="#">a link</a>.
            </div>
        </div> 
		<script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
        <script type="text/javascript">
            $(window).load(function () {
                $('#slider').nivoSlider({
                    controlNav: false,
                    directionNavHide: false
                });
            });
        </script>
    </div><!-- END of templatemo_slider -->
    
    <div id="templatemo_twitter">
    	It is Automated Fuel Allocation  System
    </div> <!-- END of twitter -->
    
    <div id="templatemo_main">
    
    	<div id="templatemo_content" class="left">
        
            <h2>Validated Slips Based on Date</h2>
            
            <div class="col col_2">
  <form id="form1" runat="server">
    <div>
        <p>Select Date:<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar> </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sno" DataSourceID="SqlDataSource1" Height="162px" Width="384px">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="sno" InsertVisible="False" ReadOnly="True" SortExpression="sno" />
                    <asp:BoundField DataField="type_fuel" HeaderText="type_fuel" SortExpression="type_fuel" />
                    <asp:BoundField DataField="date_filling" HeaderText="date_filling" SortExpression="date_filling" />
                    <asp:BoundField DataField="empno" HeaderText="empno" SortExpression="empno" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="vehicle" HeaderText="vehicle" SortExpression="vehicle" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="validate" HeaderText="validate" SortExpression="validate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [sno], [type_fuel], [date_filling], [empno], [name], [vehicle], [quantity], [validate] FROM [slip] WHERE (([validate] = @validate) AND ([date_filling] = @date_filling))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="validate" Type="String" />
                    <asp:SessionParameter DefaultValue="2/3/2019" Name="date_filling" SessionField="date1" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </div>
    </form> 
            </div>
            
            <div class="col col_2 no_mr">
                 
            </div>
            
            <div class="clear"></div>
            
            <div class="col col_2">
                 
            </div>
            
            <div class="col col_2 no_mr">
                
            </div>
            
            <div class="clear"></div>
            <hr />
            
            <div class="post-item last_post">
            	<div class="post-meta">
                	<img src="images/author.png" alt="post author image" />
                    <div class="post-meta-content">
                    	<h2>Our Team</h2>
                        Posted by <span><a href="#">Admin</a></span>
                        | <span><a href="#">19 Feb 2019</a></span>
                                   </div>
                    <span class="post_comment">10</span>
                    <div class="clear"></div>
				</div>
                <img class="img_border_b img_nom" src="images/blog/01.jpg" alt="Post Image 2" />
                <p></p>
                <a class="more" href="#">More</a>
                </div>
            </div>
		
        </div> <!-- END of content -->
                
		<div id="templatemo_sidebar" class="right">
			
			<div class="sidebar_section">
                <h2>Services</h2>
                <img src="images/templatemo_image_01.jpg" alt="services" class="img_nom img_border" />
                <p><em></em></p>
                <ul class="list_bullet">
                    <li><a href="#">Credits</a></li>
                    <li><a href="#">Updation</a></li>
                    <li><a href="#">Assignments</a></li>
                    <li><a href="#">Updattions</a></li>
                    <li><a href="#">Timely</a></li>
                </ul>
                <a href="#" class="more">More</a>
			</div>
            <div class="testimonial">
            	<p class="testimonial_text">Team Work </p>
                <p><strong>Students</strong></p>
            </div>
            <div class="sidebar_section">
            	<h2>About</h2>
                <p>Students</p>
                <a href="#" class="more">More</a>
            </div>
      </div>
        
        <div class="clear"></div>


</div> <!-- END of wrapper -->

<div id="templatemo_bottom_wrapper">
	<div id="templatemo_bottom">
    	
        <div class="col col_3">
            <h4>Photo Gallery</h4>
            <ul class="nobullet footer_gallery">
                <li><a href="images/portfolio/02.jpg" rel="lightbox[gallery]"><img src="images/templatemo_image_02.png" alt="image 2" /></a></li>
                <li><a href="images/portfolio/03.jpg" rel="lightbox[gallery]"><img src="images/templatemo_image_03.png" alt="image 3" /></a></li>
                <li><a href="images/portfolio/04.jpg" rel="lightbox[gallery]"><img src="images/templatemo_image_04.png" alt="image 4" /></a></li>
                <li><a href="images/portfolio/05.jpg" rel="lightbox[gallery]"><img src="images/templatemo_image_05.png" alt="image 5" /></a></li>
                <li><a href="images/portfolio/03.jpg" rel="lightbox[gallery]"><img src="images/templatemo_image_06.png" alt="image 6" /></a></li>
                <li><a href="images/portfolio/01.jpg" rel="lightbox[gallery]"><img src="images/templatemo_image_07.png" alt="image 7" /></a></li>
            </ul>
            <div class="clear"></div>
            <a href="#" class="more">View all</a>
        </div>
    	
        <div class="col col_3">
        	<h4>Twitter</h4>
      		<ul class="nobullet twitter">
                
            </ul>
        </div>
        
        <div class="col col_3 no_mr">
        	<h4>Follow Us</h4>
            <ul class="nobullet social">
            	<li><a href="#" class="facebook">Facebook</a></li>
                <li><a href="#" class="twitter">Twitter</a></li>
                <li><a href="#" class="youtube">Youtube</a></li>
                <li><a href="#" class="google">Google+</a></li>
                <li><a href="#" class="vimeo">Vimeo</a></li>
                <li><a href="#" class="skype">Skype</a></li>
            </ul>
        </div>
        
        <div class="clear"></div>
    </div> <!-- END of bottom -->
    
</div> <!-- END of bottom wrapper -->

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
    	Copyright © 2019 Students
    </div> <!-- END of footer -->
</div> <!-- END of footer wrapper -->
 
-->
</body>
</html> 