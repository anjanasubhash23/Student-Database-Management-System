<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Database Management System</title>
      
        <style>
            body{
                
                background-image: url("image/school.jpg");
                -moz-background-size: cover;
-webkit-background-size: cover;
background-size: cover;
background-position: top center !important;
background-repeat: no-repeat !important;
background-attachment: fixed;
            }
            .button{
               box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
               padding: 14px 40px;
               border-radius: 12px;
               font-weight: bold;
               background-color: #000000;
  border: none;
  color: whitesmoke;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.6;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
            }
            .button:hover {opacity: 1}
            .overlay {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.9);
  overflow-x: hidden;
  transition: 0.5s;
}

.overlay-content {
  position: relative;
  top: 25%;
  width: 100%;
  text-align: center;
  margin-top: 30px;
}

.overlay a {
  padding: 8px;
  text-decoration: none;
  font-size: 36px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.overlay a:hover, .overlay a:focus {
  color: #f1f1f1;
}

.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
}

@media screen and (max-height: 450px) {
  .overlay a {font-size: 20px}
  .overlay .closebtn {
  font-size: 40px;
  top: 15px;
  right: 35px;
  }
}
        </style>
        
    </head>
    <body>
        <div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
    <a href="homepage2.jsp">Home</a>
    <a href="About.jsp">About</a>
    <a href="index.jsp">Logout</a>
  </div>
</div>
<span style="font-size:40px;cursor:pointer" onclick="openNav()">&#9776;</span>
<script>
function openNav() {
  document.getElementById("myNav").style.width = "30%";
}
function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}
</script>
       <center><h1><b>WELCOME TO STUDENT DATABASE MANAGEMENT SYSTEM</b></h1></center>
        <center>
            <div>  
             
                <table>
                    <tr>
                        <form action="create.html" method="POST">
                     <td colspan="5" style="text-align: center"><input type="submit" value="Create Record" class="button"></td>                  
                    </tr>
                    </form>
                    <tr>
                        <form action="searchstudent.jsp" method="POST">
                     <td colspan="5" style="text-align: center"><input type="submit" name="searchAction" value="Modify Record" class="button"></td>                  
                    </tr>
                    </form>

                    <tr>
                        <form action="searchstudent.jsp" method="POST">
                        <td colspan="5" style="text-align: center"><input type="submit" name="searchAction" value="Display Record" class="button"></td>
                    </tr>
                    </form>
                    <tr>
                        <form action="display.jsp" method="POST">
                        <td colspan="5" style="text-align: center"><input type="submit" name="displayall" value="DisplayAll Record" class="button"></td>
                    </tr>
                    </form>
                    <tr>
                        <form action="searchstudent.jsp" method="POST">
                        <td colspan="5" style="text-align: center"><input type="submit" name="searchAction" value="Delete Record" class="button"></td>
                    </tr>
                    </form>
                    <tr>
                        <form action="deleteall.jsp" method="POST">
                        <td colspan="5" style="text-align: center"><input type="submit" name="deleteall" value="DeleteAll Record" class="button"></td>
                    </tr>
                    </form>
                </table>
                
            </div>
        </center>
        <script src="js/Home2.jsp"></script>
    </body>
</html>