<%-- 
    Document   : testing1
    Created on : Oct 5, 2019, 10:42:54 AM
    Author     : Mitasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.InputStream" %>
<%@page import=" javax.servlet.http.Part"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
             
 
.box2 .inputBox {
  position: relative;
}

.box2 .inputBox input {
  width: 100%;
  padding: 0.625rem 0;
  font-size: 1rem;
  color: black;
  letter-spacing: 0.062rem;
  margin-bottom: 1.875rem;
  border:  none;
  border-bottom: 0.065rem solid #1DA1F2;
  outline:#1DA1F2;
  background: transparent;
}

.box2 .inputBox label {
  position: absolute;
  top: 0;
  left: 0;
  padding: 0.625rem 0;
  font-size: 1rem;
  color:#1DA1F2;
  pointer-events: none;
  transition: 0.5s;
}

.box2 .inputBox input:focus ~ label,
.box2 .inputBox input:valid ~ label,
.box2 .inputBox input:not([value=""]) ~ label {
  top: -2.125rem;
  left: 0;
  color:  #03a9f4;
  font-size: 1.75rem;
}

.box2 input[type="submit"] {
  border: none;
  outline: none;
  color:#03a9f4;
  background-color: white;
  padding: 0.625rem 1.25rem;
  cursor: pointer;
  border-radius:6px;
  font-size: 1.25rem;
  width: 100%;
  font-weight: bolder;
}

.box2 input[type="submit"]:hover {
  background-color:lightblue;
   border-bottom: 0.065rem solid 1DA1F2;
/*  color: white;*/
  
}

            
.box1 .inputBox {
  position: relative;
}

.box1 .inputBox input {
  width: 100%;
  padding: 0.625rem 0;
  font-size: 1rem;
  color: black;
  letter-spacing: 0.062rem;
  margin-bottom: 1.875rem;
  border:1;
  border-bottom: 0.065rem solid #1DA1F2;
  outline:#1DA1F2;
  background: transparent;
}

.box1 .inputBox label {
  position: absolute;
  top: 0;
  left: 0;
  padding: 0.625rem 0;
  font-size: 1.5rem;
  color:black;
  pointer-events:  none;
  transition: 0.5s;
  cursor:blink;
}

.box1 .inputBox input:focus ~ label,
.box1 .inputBox input:valid ~ label,
.box1 .inputBox input:not([value=""]) ~ label {
  top: -2.125rem;
  left: 0;
  color: black;
  font-size: 1.75rem;
}

.box1 input[type="text"] {
  border: 1;
  outline: none;
  color:black;
  background-color: lightgrey;
  padding: 0.5rem 1rem;
/*  cursor: pointer;*/
  border-radius:16px;
  font-size: 1rem;
  width: 100%;
/*  font-weight: bolder;*/
/*  border-color: #1DA1F2;*/
  
}

.box1 input[type="text"]:hover {
  background-color:lightgrey;
  color: black;
  
}
            /* Remove unnecessary margins/padding */
html, body { margin: 0; padding: 0 }

.wrapper {
  display: grid;
  /* Header and footer span the entire width, sidebars and content are fixed, with empty space on sides */
  grid-template-areas:
    "header header header header header"
    "empty_left sidebar_1 content sidebar_2 empty_right"
    "footer footer footer footer footer";
  /* Only expand middle section vertically (content and sidebars) */
  grid-template-rows: 0fr 1fr 0fr;
  /* 100% width, but static widths for content and sidebars */
  grid-template-columns: 1fr 275px 650px 400px 1fr;
  /* Force grid to be at least the height of the screen */
  min-height: 100vh;
}
.header {
  grid-area: header;

  /* Stick header to top of grid */
  position: sticky;
  top: 0;
  /* Ensure header appears on top of content/sidebars */
  z-index: 1;

  /* General appearance */
  background-color: white;
   font-family: sans-serif;
/*  text-align: center;*/
  font-size: 1rem;
  line-height: 1.5;
  padding: 1rem;
  border-bottom: 0.065rem solid gray;
  border-right:  0.065rem solid lightgray;
  border-left:  0.065rem solid lightgray;
  border-top:  0.065rem solid lightgray;
  border-color: lightgrey;
  border: 1;
}
/* Save header height to properly set `padding-top` and `margin-top` for sticky content */
:root {
/*  --header-height: calc(1rem * 1.5 + 1rem * 2);*/
}

.sidebar-1 {
  grid-area: sidebar_1;
}
.sidebar-2 {
  grid-area: sidebar_2;
}
.sidebar-1,
.sidebar-2 {
  display: flex;
  flex-direction: column;
  position: sticky;
  top: 0;

  /* Styling to match reference */
  background-color: #BC514F;
}

.content {
  grid-area: content;
   grid-area: content;
   border-right:  0.065rem solid lightgray;
  border-left:  0.065rem solid lightgray;
  border: 1;
   border-color: lightgrey;
  /* General appearance */
/*  background-color: #99BB5E;*/
}
.footer {
  grid-area: footer;

  /* Stick footer to bottom of grid */
  position: sticky;
  bottom: 0;

  /* General appearance */
  background-color: #FCFF34;
  text-align: center;
  font-size: .8rem;
  line-height: 1.5;
  padding: .5rem;
}
/* Save footer height to properly set `bottom` and `min-height` for sticky content */
:root {
  --footer-height: calc(0rem * 0 + 0rem * 0);
}

.sticky-spacer {
  flex-grow: 1;
}
.sticky-content {
  position: sticky;
  bottom: var(--footer-height);
  min-height: calc(100vh - var(--footer-height));
  box-sizing: border-box;
  
  --padding: 10px;
  padding:
    calc(var(--header-height) + var(--padding))
    var(--padding)
    var(--padding);
  margin-top: calc(0px - var(--header-height));
}
 

.box .inputBox {
  position: relative;
}

.box .inputBox input {
  width: 100%;
  padding: 0.625rem 0;
  font-size: 1rem;
  color: black;
  letter-spacing: 0.062rem;
  margin-bottom: 1.875rem;
  border:  none;
  border-bottom: 0.065rem solid #1DA1F2;
  outline:#1DA1F2;
  background: transparent;
}

.box .inputBox label {
  position: absolute;
  top: 0;
  left: 0;
  padding: 0.625rem 0;
  font-size: 1rem;
  color:#1DA1F2;
  pointer-events: none;
  transition: 0.5s;
}

.box .inputBox input:focus ~ label,
.box .inputBox input:valid ~ label,
.box .inputBox input:not([value=""]) ~ label {
  top: -2.125rem;
  left: 0;
  color:  #03a9f4;
  font-size: 1.75rem;
}

.box input[type="submit"] {
  border: none;
  outline: none;
  color:#03a9f4;
  background-color: white;
  padding: 0.625rem 1.25rem;
  cursor: pointer;
  border-radius:12px;
  font-size: 1.25rem;
  width: 100%;
  font-weight: bolder;
}

.box input[type="submit"]:hover {
 background-color:#03a9f4; /*#99ccff;/*   #03a9f4;*/
  color: white;
  
}


        </style>
        <script>
            function a1(){
             window.location.href="home.jsp";           }
             function a2(){
             window.location.href="explore.jsp";           }
          function a3(){
             window.location.href="notification.jsp";           }
          function a4(){
             window.location.href="message.jsp";           }
          function a5(){
             window.location.href="profile.jsp";           }
//         function a6(){
//             document.getElementById("foll").style.visibility="visible";
//              document.getElementById("foll1").style.visibility="hidden";}
//          function a7(){
//              document.getElementById("foll").style.visibility="hidden"; 
//               document.getElementById("foll1").style.visibility="hidden"; 
//          }
//          function a8(){
//              document.getElementById("foll").style.visibility="hidden"; 
//             document.getElementById("foll1").style.visibility="visible";        }
//         
        </script>
    </head>
    <body onLoad="a7()">
     <div class="wrapper">
<!--<div class="header">Header (Absolute)</div>-->
<div class="sidebar-1">
  <div class="sticky-spacer"></div>
  <div style="background-color:white" class="sticky-content">
<!--      &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;<img src="logo.jpeg" width="40" height="40" align="absmiddle">-->
      <table align="center" cellpadding="3" cellspacing="5">
          <tr><td><img src="logo.jpeg" width="40" height="40" align="absmiddle"></td>   <td> <div class="box">   </div></td></tr>
          <tr ><td colspan="2"  align="center"><img src="logo.jpeg" style="visibility:hidden;" width="0" height="0" align="absmiddle"></td>
          </tr>
          <tr><td><img src="home.png" width="30" height="30"></td>   <td> <div class="box">   <input  align="right" type="submit" name="Next" onClick="a1()" value="Home"> </div></td></tr>
          <tr><td><img src="hash.png" width="30" height="30"></td><td> <div class="box">  <input  align="right" type="submit" name="Next" value="Explore" onClick="a2()" > </div></td></tr>
          <tr><td><img src="noti.png" width="30" height="30"></td><td> <div class="box">      <input  align="right" type="submit" name="Next" value="Notification" onClick="a3()" > </div></td></tr>
           <tr><td><img src="msg.png" width="30" height="30"></td><td> <div class="box">  <input  align="right" type="submit" name="Next" value="Message" onClick="a4()" > </div></td></tr>
           <tr><td><img src="bookmark.png" width="30" height="30"></td><td> <div class="box">   <input  align="right" type="submit" name="Next" value="Bookmarks"> </div></td></tr>
           <tr><td><img src="list.png" width="30" height="30"></td><td> <div class="box"> <input  align="right" type="submit" name="Next" value="Lists"> </div></td></tr>
           <tr><td><img src="more.png" width="30" height="30"></td><td> <div class="box">   <input  align="right" type="submit" name="Next" value="Profile" onClick="a5()" > </div></td></tr>
            <tr><td><img src="more.png" width="30" height="30"></td><td> <div class="box">   <input  align="right" type="submit" name="Next" value="More"> </div></td></tr>
<!--            <tr><td><td></td></tr>-->
      </table>
       <div class="box">&nbsp;&nbsp;&nbsp;&nbsp;   <input style=" color:white;
  background-color:#03a9f4;padding: 0.5rem 0.5rem; width:80%; hover= background-color:#03a9f4;   
  color: white  ;
  
  
 "  align="center" type="submit" name="Next" value="Tweet"> </div>
      
    </div>
</div>
<div class="content">
  <div class="sticky-spacer"></div>
  <div class="sticky-content">
      <div class="header"><b>Lists</b></div>
      <form>
      <table  border="0"  width="646" class="content"style=" border-bottom: 0.065rem solid  ; border-color: lightgray">
        <tr>
            <td width="320" style=" border-bottom: 0.065rem solid 1DA1F2; border-color: lightgray; border-right: 0.065rem solid  lightgrey; ">
                <div class="box2">   <input  align="right" type="submit" name="q1" value="Follower" style=" width:100% ;" onClick="a6()"> </div>
          </td>
          <td width="316" style=" border-bottom: 0.065rem solid 1DA1F2 ; border-color: lightgray;">
          <div class="box2">   <input  align="right" type="submit" name="q2" value="Following" style=" width:100%"onClick="a8()"> </div>
          </td>
        </tr>
      </table><br> </form>
       <div id="foll">
     <%
     if(request.getParameter("q1")!=null){
          %>
         
          <table rules="rows "  border="0"  width="646" class="content"style=" border-bottom: 0.295rem solid grey ; border-color: lightgray">
              <%
             try{
            Class.forName("com.mysql.jdbc.Driver");
          Connection conn=null;
         Statement ps=null;
        
          conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
          ps=conn.createStatement();
         
          Connection conn1=null;
         Statement ps1=null;
        
          conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
          ps1=conn1.createStatement();
            ResultSet rs1=null;
            
            Connection conn2=null;
          Statement ps2=null; 
           conn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
            ps2=conn2.createStatement();
            
         ResultSet rs= ps.executeQuery("select * from followertable where follower='"+(String)session.getAttribute("username")+"'");
         while(rs.next()){
            
            rs1 =ps1.executeQuery("select name from user where username='"+rs.getString("following")+ "'");
               rs1.next();
          %> <tr  bordercolor="#999999" style=" border-bottom: 0.265rem solid  grey ; border-color: grey"  border="1"> 
              <td>
             <img src="profilegetexplore.jsp?id=<%=rs.getString("following")%>" style=" vertical-align: top; display: inline-block;
  width: 60px;
  height: 60px;
  border-radius: 50%;

  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;"  />             
            
                   
              <%=rs1.getString(1)%>
            
             
              </td>
              <%    String sql2="select * from followertable where following='" +(String)session.getAttribute("username")+ "' and follower='" +rs.getString("following")+ "'";
                   ResultSet rs2=ps2.executeQuery(sql2);
                   if(rs2.next()){
                     %>
                      <td> <div class="box">
                      <input style=" color:white; font-size: 16px;
   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:60%; hover= background-color:#03a9f4;   
   color: white  ;
  
  
   "  align="right" type="submit" name="t3" value="Unfollow" onclick= "window.location=('unfollow.jsp?user=<%=rs2.getInt("followerid")%>')">  </div>
                   </td>
                     
                     <%
                   }else{
                   
                %>  <td> <div class="box">
                      <input style=" color:white; font-size: 16px;
   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:60%; hover= background-color:#03a9f4;   
   color: white  ;
  
  
    "  align="right" type="submit" name="t3" value="follow" onclick= "window.location=('follow.jsp?id=<%=rs.getString("following")%>&user=<%=(String)session.getAttribute("username")%>')">  </div>
                   </td>
    <%  } %>
             <%    
       rs1.close();rs1=null;
        %>
          </tr>
      <%         
         } 
         
       }catch(Exception exc){}        %> </table><%
            }
      %> 
          </div>  
          
<!--          hh-->
  <div id="foll1">
<%
if(request.getParameter("q2")!= null){ %> 
         
          <table rules="rows "  border="0"  width="646" class="content"style=" border-bottom: 0.295rem solid grey ; border-color: lightgray">
              <%
             try{
            Class.forName("com.mysql.jdbc.Driver");
          Connection conn=null;
         Statement ps=null;
        
          conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
          ps=conn.createStatement();
         
          Connection conn1=null;
         Statement ps1=null;
        
          conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
          ps1=conn1.createStatement();
            ResultSet rs1=null;
            
            Connection conn2=null;
          Statement ps2=null; 
           conn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
            ps2=conn2.createStatement();
            
         ResultSet rs= ps.executeQuery("select * from followertable where following='"+(String)session.getAttribute("username")+"'");
         while(rs.next()){
            
            rs1 =ps1.executeQuery("select name from user where username='"+rs.getString("follower")+ "'");
               rs1.next();
          %> <tr  bordercolor="#999999" style=" border-bottom: 0.265rem solid  grey ; border-color: grey"  border="1"> 
              <td>
             <img src="profilegetexplore.jsp?id=<%=rs.getString("follower")%>" style=" vertical-align: top; display: inline-block;
  width: 60px;
  height: 60px;
  border-radius: 50%;

  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;"  />             
            
                   
              <%=rs1.getString(1)%>
            
             
              </td>
              <%    String sql2="select * from followertable where following='" +(String)session.getAttribute("username")+ "' and follower='" +rs.getString("follower")+ "'";
                   ResultSet rs2=ps2.executeQuery(sql2);
                   if(rs2.next()){
                     %>
                      <td> <div class="box">
                      <input style=" color:white; font-size: 16px;
   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:60%; hover= background-color:#03a9f4;   
   color: white  ;
  
  
   "  align="right" type="submit" name="t3" value="Unfollow" onclick= "window.location=('unfollow.jsp?user=<%=rs2.getInt("followerid")%>')">  </div>
                   </td>
                     
                     <%
                   }else{
                   
                %>  <td> <div class="box">
                      <input style=" color:white; font-size: 16px;
   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:60%; hover= background-color:#03a9f4;   
   color: white  ;
  
  
    "  align="right" type="submit" name="t3" value="follow" onclick= "window.location=('follow.jsp?id=<%=rs.getString("following")%>&user=<%=(String)session.getAttribute("username")%>')">  </div>
                   </td>
    <%  } %>
             <%    
       rs1.close();rs1=null;
        %>
          </tr>
      <%         
         } 
         
       }catch(Exception exc){}        %> </table><%
            }
      %> 
          </div> 
    </div>
 </div>
 <div class="sidebar-2">
   <div class="sticky-spacer"></div>
   <div class="sticky-content"style=" background-color: white;">
       <div class="header"><div class="box1"><img src="search.png" ><input type="text" name="Next1"
                                                      style=" color:black;padding: 0.4rem 0rem;
   background-color:whitesmoke; width:80%  ; height:60 " align="left" placeholder="  Search Twitter" > </div>
      
    </div>
<!--    Sidebar 2 Absolute position, Fixed width<br><br>
  
   line 10-->
  
   </div>
 </div></div>
 <!--<div class="footer">Footer (Absolute)</div>-->
</div>
    </body>
</html>
