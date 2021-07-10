
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        
        h1{
            color: #FCDFFF;
           text-shadow: 2px 2px 5px red;
           font-size: 40px;
            font-style: italic;
        }
        p{
            color: #FCDFFF;
            text-shadow: 2px 2px 5px red;
            font-size: 25px;
            font-style: italic;
            font-weight: bold;             
        }
        body{
                
                background-image: url("image/school.jpg");
                -moz-background-size: cover;
-webkit-background-size: cover;
background-size: cover;
background-position: top center !important;
background-repeat: no-repeat !important;
background-attachment: fixed;
            }
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
<center>        
    <body>
        <h1>About</h1>
        <p>In education institutions, storing, tracking and updating records of students becomes difficult and tedious for a sole person to do. Our research is related to the setting up of an automated student record management system which enables the administration of an institution to access the important information efficiently and effectively with minimal cost. The system aims to eliminate the time consuming and traditional practice of manually managing data. The staff can easily manage the students' personal, educational and co-curricular activities related information. The college staff can create, display, modify or delete records of students whenever required. The system will enable huge storage of data and easy retrieval. The system is developed using technologies such as HTML, CSS and MySQL. Therefore introducing the student database management system in an institution will centralize the administration.</p>
    </body>
    </center>
</html>
