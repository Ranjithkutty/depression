<?php
session_start();
include("include/dbconnect.php");
extract($_POST);
$msg="";


?>
<!DOCTYPE html>
<!--
Template Name: Surogou
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Copyright: OS-Templates.com
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title><?php include("title.php"); ?></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul class="nospace">
        <li><a href="admin.php"><i class="fas fa-home fa-lg"></i></a></li>
        <li><a href="logout.php">Logout</a></li>
      </ul>
    </div>
    <div class="fl_right">
      <ul class="nospace">
        <li><i class="fas fa-phone rgtspace-5"></i> +00 (123) 456 7890</li>
        <li><i class="fas fa-envelope rgtspace-5"></i> socialmedia.com</li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="one_half first">
      <h1 class="logoname"><a href="index.html"><span>Social</span> Media</a></h1>
    </div>
    <div class="one_half">
      <ul class="nospace clear">
        <li class="one_half first">
          <div class="block clear"><i class="fas fa-phone"></i> <span><strong class="block">Call Us:</strong> +00 (123) 456 7890</span> </div>
        </li>
        <!--<li class="one_half">
          <div class="block clear"><i class="far fa-clock"></i> <span><strong class="block"> Mon. - Sat.:</strong> 08.00am - 18.00pm</span> </div>
        </li>-->
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </header>
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li><a href="admin.php">Home</a></li>
      <!--<li><a class="drop" href="#">Pages</a>
        <ul>
          <li><a href="pages/gallery.html">Gallery</a></li>
          <li><a href="pages/full-width.html">Full Width</a></li>
          <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
          <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
          <li><a href="pages/basic-grid.html">Basic Grid</a></li>
          <li><a href="pages/font-icons.html">Font Icons</a></li>
        </ul>
      </li>-->
      <!--<li><a class="drop" href="#">Dropdown</a>
        <ul>
          <li><a href="#">Level 2</a></li>
          <li><a class="drop" href="#">Level 2 + Drop</a>
            <ul>
              <li><a href="#">Level 3</a></li>
              <li><a href="#">Level 3</a></li>
              <li><a href="#">Level 3</a></li>
            </ul>
          </li>
          <li><a href="#">Level 2</a></li>
        </ul>
      </li>-->
      <li><a href="add_data.php">Dataset</a></li>
	  <li class="active"><a href="detect.php">Detection</a></li>
	  <li><a href="report.php">Report</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </nav>
</div>

<p>&nbsp;</p>
<form name="form1" method="post" action="">
  <h2 align="center">Depressed Users </h2>
  <p align="center">
    <input type="submit" name="btn" value="Detection">
   </p>
  <?php
  if(isset($btn))
  {
  $q1=mysql_query("select * from register where dstatus=1");
  $n1=mysql_num_rows($q1);
  if($n1>0)
  {
  ?>
  <table width="80%" border="1" align="center">
    <tr>
      <th>Sno</th>
      <th>User ID </th>
      <th>Name</th>
      <th>Reg. Date </th>
    </tr>
	<?php
	$i=0;
	while($r1=mysql_fetch_array($q1))
	{
	$i++;
	?>
    <tr>
      <td><?php echo $i; ?></td>
      <td><?php echo $r1['username']; ?></td>
      <td><?php echo $r1['name']; ?></td>
      <td><?php echo $r1['rdate']; ?></td>
    </tr>
	<?php
	}
	?>
  </table>
  <?php
  }
  else
  {
  ?><p align="center" class="style1">No Users!!</p><?php
  }
  }
  ?>
  <p align="center" class="style1">&nbsp;</p>
</form>
<p>&nbsp;</p>

<p>&nbsp;</p>
<p>&nbsp;</p>

<div class="wrapper gradient">
  <section id="cta" class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h6 class="heading">Contacts</h6>
      <p></p>
    </div>
    <ul class="nospace clear">
      <li class="one_third first">
        <div class="block clear"><i class="fas fa-phone"></i> <span><strong>Give us a call:</strong> +00 (123) 456 7890</span> </div>
      </li>
      <li class="one_third">
        <div class="block clear"><i class="fas fa-envelope"></i> <span><strong>Send us a mail:</strong> support@techdept.com</span> </div>
      </li>
      <li class="one_third">
        <div class="block clear"><i class="fas fa-map-marker-alt"></i> <span><strong>Come visit us:</strong> Directions to <a href="#">our location</a></span> </div>
      </li>
    </ul>
    <!-- ################################################################################################ -->
  </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_third first">
      <!--<h1 class="logoname"><span>Animal</span> Monitoring</h1>
      <p class="btmspace-30"></p>-->
      <ul class="faico clear">
        <li><a class="faicon-dribble" href="#"><i class="fab fa-dribbble"></i></a></li>
        <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
        <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
      </ul>
    </div>
    <!--<div class="one_third">
      <h6 class="heading">Massa hendrerit bibendum</h6>
      <ul class="nospace linklist">
        <li><a href="#">Tincidunt vel vulputate egestas</a></li>
        <li><a href="#">Leo sed porttitor accumsan arcu</a></li>
        <li><a href="#">Aenean ac urna et leo posuere</a></li>
        <li><a href="#">Pretium suspendisse ac elit ut</a></li>
      </ul>
    </div>
    <div class="one_third">
      <h6 class="heading">Etiam auctor dignissim</h6>
      <p class="nospace btmspace-15">Leo integer sem nisl mollis ut ornare eu lobortis eget ante mauris tempor.</p>
      <form method="post" action="#">
        <fieldset>
          <legend>Newsletter:</legend>
          <input class="btmspace-15" type="text" value="" placeholder="Name">
          <input class="btmspace-15" type="text" value="" placeholder="Email">
          <button type="submit" value="submit">Submit</button>
        </fieldset>
      </form>
    </div>-->
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left"><?php include("title.php"); ?></p>
    <p class="fl_right"><a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates"></a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>