<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
 <head>
  <title>FeedCraft Student Dashboard</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css?family=Arvo&display=swap" rel="stylesheet"/>
  <link rel="icon" href="./images/LOGO img.png" type="image/png"/>
  <link rel="stylesheet" href="./css/preload.css"/>
  <script defer src="./preload.js"></script>
  <link rel="stylesheet" href="./css/adminhome.css"/>
  <link rel="stylesheet" href="./css/homesnavbar.css"/>
  <link rel="stylesheet" href="./css/admintables.css"/>
 </head>
 <body>
  <div id="preload" class="preload" data-preaload>
    <div class="circle"></div>
    <p class="text">Loading...</p>  
  </div>
    <div class="header">
        <a href="studenthome"><img alt="FeedCraft Logo" style="height: 45px;" src="./images/LOGO.png" width="50"/></a>
        <div class="title">STUDENT - LOG - IN</div>
        <ul>
         <li>
          <a href="studenthome">
           <div ><img class="user-icon" src="./images/pofile.png"/></div>
          </a>
          <ul class="dropdown">
           <li><a href="studentprofile">My Profile</a></li>
           <li><a href="logout" class="red-hover">Logout</a></li>
          </ul>
         </li>
        </ul>
       </div>
     
       <div style="background-color: #5b5a5ab4; margin-top: 51px; width: 100%; padding: 2px; position: fixed;"></div>
     
       <div class="nav">
        <a href="studenthome">Home</a>
	   	<a href="studentcurrentresponses">Responses</a>
	   	<a href="studentcoursemapping">Mapping</a>
	   	<a href="studenthistory">History</a>
	   	<a href="studenthelp">Help</a>
       </div>
       

       <div class="main-container-content-box">
        <div class="content"> 
          <div class="content-header">
            <h2>Student Mapped Courses</h2>
            <div class="button-container">
              <a href="studentaddcourse"><button class="edit-button">Add Mapping</button></a>
            </div>
          </div>
          <div class="table-container">
            <table>
             <thead>
              <tr>
               <th>S.no.</th>
               <th>Course ID</th>
               <th>Course Name</th>
               <th>Student ID</th>
               <th>Student Name</th>
               <th>Section</th>
               <!-- <th>L-T-P-S</th> -->
               <!-- <th>Action</th> -->
              </tr>
             </thead>
             <tbody>
                <c:forEach items="${studentmappinglist}" var="studentmappinglist" varStatus="status">
                	<tr>
                		<td><c:out value="${status.index + 1}"></c:out></td>
                		<td><c:out value="${studentmappinglist.courseid}"></c:out></td>
                		<td><c:out value="${studentmappinglist.coursename}"></c:out></td>
                		<td><c:out value="${studentmappinglist.facultyid}"></c:out></td>
                		<td><c:out value="${studentmappinglist.facultyname}"></c:out></td>
                		<td><c:out value="${studentmappinglist.section}"></c:out></td>
<%--                 		<td><c:out value="${studentmappinglist.ltps}"></c:out></td> --%>
                		<!-- <td class="action-icons">
		                  <a href="#"><i style="color:red;cursor: pointer" class="fas fa-trash"></i></a>
		                </td> -->
                	</tr>
                </c:forEach>
              </tbody>
            </table>
           </div>
         </div>
       </div>

  
  
  <footer>
    <p>Copyright ©K-University 2024-25 SDP Project. All rights reserved.</p>
  </footer>
 </body>
</html>