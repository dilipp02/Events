<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="homeStyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="header">
            <h1>EventMania.com</h1>
        </div>

        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="aboutUs.jsp">About Us</a>
            <a href="contactUs.jsp">Contact</a>
        </div>    
        <div id="navbar">
          <a class="active" style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</a>
          <a href="javascript:void(0)"></a>
          <a href="news.jsp">News</a>
          <a href="gallery.jsp">Gallery</a>
          <%
              String user = (String)session.getAttribute("organiser");
          %>
            <div class="topnav-right">
              <a href="newEvent.jsp">Create an Event</a>
              <a href="organiserProfile.jsp">My Profile</a>
              <form action="LogoutURL">
                  <a href="#"><input class="logout" type="submit" value="Logout"/></a>
              </form>
            </div>
        </div>

        <div class="content">
            <center><h3 style="color:red">What event Are You Up For Today???...</h3></center>
            <div class="image-container1">
                <a href="cultural1.jsp"><div class="text">CULTURAL</div></a>
            </div>
            <div class="image-container2">
                <a href="technical1.jsp"><div class="text">TECHNICAL</div></a>
            </div>
            <div class="image-container3">
                <a href="sports1.jsp"><div class="text">SPORTS</div></a>
            </div>
            <div class="image-container4">
                <a href="social1.jsp"><div class="text">SOCIAL</div></a>
            </div>
        </div>

        <script>
            window.onscroll = function() {myFunction()};

            var navbar = document.getElementById("navbar");
            var sticky = navbar.offsetTop;

            function myFunction() {
              if (window.pageYOffset >= sticky) {
                navbar.classList.add("sticky")
              } else {
                navbar.classList.remove("sticky");
              }
            }

            function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            document.getElementById("main").style.marginLeft = "250px";
            document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
            }

            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
                document.getElementById("main").style.marginLeft= "0";
                document.body.style.backgroundColor = "white";
            }
        </script>

    </body>
</html>
