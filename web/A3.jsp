<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="exceptionHandler.jsp" %>
    
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>MyForm</title>
        <meta charset="UTF-8">

    </head>
    <body>        
        <h1>
            OWASP-3-Broken Authentication and Session Management
            <br>
            <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="back to welcomepage">
            <br>
            <br>
            A general description of the problem</h1>
        <h3>
            1. Means credentials have to go with every request.Should use SSL for everything requiring authentication
            <br>
            2. SESSION ID used to track state since HTTP does. SESSION ID is typically exposed on the network, in browser, in logs...
            <br>
            3.Change my password, remember my password, forgot my password, secret question, logout, email address.....
        </h3>
        <h1>
            <br>
            Outline typical impact of attacks exploiting that weakness
        </h1>
        <h3>
            User accounts compromised or user sessions hijacked
            <br>
        </h3>
        <h1>
            <br>
            Describe (in outline form) a typical attack scenario</h1>
        <h3>
            1. User sends credentials
            <br>
            2. Site uses URL rewriting
            (i.e., put session in URL)
            <br>
            3. User clicks on a link to http://www.hacker.com in a forum
            <br>
            4. Hacker checks referrer logs on www.hacker.com and finds user's JSESSIONID
            <br>
            5. Hacker uses JSESSIONID and takes over victim's account
            <br>
        </h3>
        <h1>
            Outline how the weakness can be avoided</h1>
        <h3>
            1. Verify your architecture
            <br>
            1.1 Authentication should be simple, centralized, and standardized
            <br>
            1.2 Use the standard session id provided by your container
            <br>
            1.3 Be sure SSL protects both credentials and session id at all times
            <br>
            2. Verify the implementation
            <br>
            2.1 Forget automated analysis approaches
            2.2 Check your SSL certificate
            2.3 Examine all the authentication-related functions
            2.4 Verify that logoff actually destroys the session
            2.5 Use OWASP WebScarab to test the implementation
            <br>
        </h3>
        <h1>
            <a href ="https://www.owasp.org/index.php/Top_10_2013">External resources for further information </a></h1>
      </body>
</html>              