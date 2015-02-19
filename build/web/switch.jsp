<%-- 
    Document   : switch
    Created on : 2014-2-28, 2:32:11
    Author     : hongwei zhang
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="exceptionHandler.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Switch Page</title>
    </head>
    <body>       
        <%!String str = "";%>
        
        <%-- forward: forward the lisks and save the cookies--%> 
        <%-- forward the lisks :get the value from the page of welcome.jsp 
        and forward to right links--%> 
        <% 
             str = request.getParameter("top10");           
             if(str.equals("A1 Injection Flaws")){
                // set cookies
                Cookie c1 =new Cookie("top10","A1 Injection Flaws");
                c1.setMaxAge(60);
                response.addCookie(c1);               
        %>
        
            <jsp:forward page="A1.jsp"/>
        <% 
            } else if (str.equals("A2 Cross Site Scripting")){
                // set cookies
                Cookie c1 =new Cookie("top10","A2 Cross Site Scripting");
                // set the time is 1min
                c1.setMaxAge(60);
                // set the cookies to the Browser
                response.addCookie(c1); 
        %>
            <jsp:forward page="A2.jsp"/> 
       <% 
            } else if (str.equals("A3 Broken Authentication and Session Management")){
                // set cookies
                Cookie c1 =new Cookie("top10","A3 Broken Authentication and Session Management");
                c1.setMaxAge(60);
                response.addCookie(c1); 
        %>
            <jsp:forward page="A3.jsp"/> 
        <% 
            } else if (str.equals("A4 Insecure Direct Object References")){
                // set cookies
                Cookie c1 =new Cookie("top10","A4 Insecure Direct Object References");
                c1.setMaxAge(60);
                response.addCookie(c1); 
        %>
            <jsp:forward page="A4.jsp"/> 
       <% 
            } else if (str.equals("A5 Cross Site Request Forgery (CSRF)")){
                // set cookies
                Cookie c1 =new Cookie("top10","A5 Cross Site Request Forgery (CSRF)");
                c1.setMaxAge(60);
                response.addCookie(c1); 
        %>
            <jsp:forward page="A5.jsp"/> 
       <% 
            } else if (str.equals("A6 Security MisconfiguraSon")){
                // set cookies
                Cookie c1 =new Cookie("top10","A6 Security MisconfiguraSon");
                c1.setMaxAge(60);
                response.addCookie(c1); 
        %>
            <jsp:forward page="A6.jsp"/> 
        <% 
            } else if (str.equals("A7 Insecure Cryptographic Storage")){
                // set cookies
                Cookie c1 =new Cookie("top10","A7 Insecure Cryptographic Storage");
                c1.setMaxAge(60);
                response.addCookie(c1); 
        %>
            <jsp:forward page="A7.jsp"/> 
       <% 
            } else if (str.equals("A8 Failure to Restrict URL Access")){
                // set cookies
                Cookie c1 =new Cookie("top10","A8 Failure to Restrict URL Access");
                c1.setMaxAge(60);
                response.addCookie(c1); 
        %>
            <jsp:forward page="A8.jsp"/> 
       <% 
            } else if (str.equals("A9 Insufficient Transport Layer ProtecSon")){
                // set cookies
                Cookie c1 =new Cookie("top10","A9 Insufficient Transport Layer ProtecSon");
                c1.setMaxAge(60);
                response.addCookie(c1); 
        %>
            <jsp:forward page="ServletA9"/> 
       <%
            } else {
                // set cookies
                Cookie c1 =new Cookie("top10","A10 Unvalidated Redirects and Forwards");
                c1.setMaxAge(60);
                response.addCookie(c1); 
        %>
            <jsp:forward page="A10.jsp"/>
        <%
            }
        %>        
      
    </body>
</html>