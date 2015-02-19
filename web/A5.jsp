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
            OWASP-5-Cross Site Request Forgery (CSRF)
            <br>
            <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="back to welcomepage">
            <br>
            <br>
            A general description of the problem</h1>
        <h3>
            1. An attack where the victim's browser is tricked into issuing a command to a vulnerable web application
            <br>
            2. Vulnerability is caused by browsers automatically including user authentication data (session ID, IP address, Windows domain credentials, â¦) with each request
        </h3>
        <h1>
            <br>
            Outline typical impact of attacks exploiting that weakness
        </h1>
        <h3>
            1. Initiate transactions (transfer funds, logout user, close account)
            <br>
            2. Access sensitive data
            <br>
            3. Change account details
            <br>
                
            May also allow full database schema, or account access, or even OS level access
        </h3>
        <h1>
            <br>
            Describe (in outline form) a typical attack scenario</h1>
        <h3>
            1. Attacker sets the trap on some website on the internet(or simply via an e-mail)
            <br>
            2. While logged into vulnerable site,victim views attacker site
            <br>
            3. Vulnerable site sees legitimate request from victim and performs the action requested
            <br>
        </h3>
        <h1>
            Outline how the weakness can be avoided</h1>
        <h3>
            1. Add a secret, not automatically submitted, token to ALL sensitive requests
            <br>
            1.1 This makes it impossible for the attacker to spoof the request
            (unless there is an XSS hole in your application)
            <br>
            1.2 Tokens should be cryptographically strong or random
            <br>
            2. Options
            <br>
            2.1 Store a single token in the session and add it to all forms and links
            <br>
            2.2 Beware exposing the token in a referer header
            <br>
            2.3 Can have a unique token for each function
            <br>
            2.4Can require secondary authentication for sensitive functions (e.g., eTrade)
            <br>
            3. Don't allow attackers to store attacks on your site
            <br>
            3.1 Properly encode all input on the way out
            <br>
            3.2 This renders all links/requests inert in most interpreters
            <br></h3>
        <h1>
            <a href ="https://www.owasp.org/index.php/Top_10_2013">External resources for further information </a></h1>
    </body>
</html>