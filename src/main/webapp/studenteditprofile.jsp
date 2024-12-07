<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Student student = (Student) request.getAttribute("student");
	if(student == null){
		response.sendRedirect("sessionexpiry.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
    <title>FeedCraft Student MyProfile</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Arvo&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/preload.css" />
    <script defer src="./preload.js"></script>
    <link rel="icon" href="./images/LOGO img.png" type="image/png">
    <link rel="stylesheet" href="./css/homesnavbar.css" />
    <link rel="stylesheet" href="./css/myprofile.css" />
</head>

<body>
    <div id="preload" class="preload" data-preaload>
        <div class="circle"></div>
        <p class="text">Loading...</p>  
    </div>
    <div class="header">
   <img alt="FeedCraft Logo" style="height: 45px;" src="./images/LOGO.png" width="50"/>
   <div class="title">STUDENT - LOG - IN</div>
   <ul>
    <li>
     <a href="studenthome">
      <div class="user-icon"><img src="./images/pofile.png"/></div>
     </a>
     <ul class="dropdown">
      <li><a href="studentprofile">My Profile</a></li>
      <li><a href="/" class="red-hover">Logout</a></li>
     </ul>
    </li>
   </ul>
  </div>
  <div style="background-color: #5b5a5ab4; margin-top: 51px; width: 100%; padding: 2px; position: fixed;"></div>

  <div class="nav">
   <a href="studenthome">Home</a>
   <a href="studentcurrentresponses">Responses</a>
   <a href="studenthistory">History</a>
   <a href="studenthelp">Help</a>
  </div>


    <div class="main-container-content-box">
        <div class="profile-content">
            <div class="header-row">
                <h2>Edit Page for My Profile </h2>
                <a href="studentprofile.html"><button class="edit-button">Back</button></a>
            </div>

            <div class="profile-card">
                <div class="profile-section">
                    <div class="profile-info">
                        <form>
                            <div>
                                <h3>Locked Student Data</h3>
                            </div>
                            <table>
                                <tr>
                                    <td><label for="id">ID:</label></td>
                                    <td><input type="text" id="id" disabled/></td>
                                </tr>
                                <tr>
                                    <td><label for="fullname">Full Name:</label></td>
                                    <td><input type="text" id="fullname" disabled/></td>
                                </tr>
                                <tr>
                                    <td><label for="gender">Gender:</label></td>
                                    <td><input type="text" id="gender" disabled/></td>
                                </tr>
                                <tr>
                                    <td><label for="dob">Date Of Birth:</label></td>
                                    <td><input type="text" id="dob" disabled /></td>
                                </tr>
                                <tr>
                                    <td><label for="fathername">Father Name:</label></td>
                                    <td><input type="text" id="fathername" disabled /></td>
                                </tr>
                                <tr>
                                    <td><label for="email">Email:</label></td>
                                    <td><input type="text" id="email" disabled/></td>
                                </tr>
                                <tr>
                                    <td><label for="department">Department:</label></td>
                                    <td><input type="text" id="department" disabled/></td>
                                </tr>
                                <tr>
                                    <td><label for="fee">Fee(per year):</label></td>
                                    <td><input type="text" id="fee" disabled /></td>
                                </tr>
                                <tr>
                                    <td><label for="contact">Phone no:</label></td>
                                    <td><input type="text" id="contact" disabled/></td>
                                </tr>
                                <tr>
                                    <td><label for="address">Address:</label></td>
                                    <td><input type="text" id="address" disabled/></td>
                                </tr>
                            </table>
                            <div>
                                <h3>Modifiable Student Data</h3>
                            </div>
                            <table>
                                <tr>
                                    <td><label for="linkedin">LinkedIn:</label></td>
                                    <td><input type="text" id="linkedin" /></td>
                                </tr>
                                <tr>
                                    <td><label for="facebook">Facebook:</label></td>
                                    <td><input type="text" id="facebook" /></td>
                                </tr>
                                <tr>
                                    <td><label for="password">Password:</label></td>
                                    <td><input type="password" id="password" /></td>
                                </tr>
                                <tr>
                                    <td><label for="password">Confirm Password:</label></td>
                                    <td><input type="password" id="password" /></td>
                                </tr>
                            </table>
                            <div>
                                <a href="studentprofile.html"><input type="submit" value="Update" style="width: 20%;" /></a>
                                <input type="reset" value="Clear" style="width: 20%;" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p>Copyright ©K-University 2024-25 SDP Project. All rights reserved.</p>
    </footer>
</body>
</html>
