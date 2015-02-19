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
        <title>OWASP-2-Cross-Site Scripting</title>
        <meta charset="UTF-8">
    </head>
    
    <body>        
        <h1>
            OWASP-2-Cross-Site Scripting 
            <br>
            <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="back to welcomepage">
            <br>
            <br>
            A general description of the problem</h1>
        <h3>
            1. Ocurrs ant time
            <br>
            2. virtually every web applications has this problem
        </h3>
        <h1>
            <br>
            Outline typical impact of attacks exploiting that weakness
        </h1>
        <h3>
            1. Steal user session, steal sensitive data, rewrite web page, redirect user to phishing or malware site
            <br>
            2. Most Severe: Install XSS proxy which allows attacker to observe and direct all user behavior on vulnerable site and force user to other sites
        </h3>
        <h1>
            <br>
            Describe (in outline form) a typical attack scenario</h1>
        <h3>
            1. Attacker sets the trap update my profile
            <br>
            2. Victim views page sees attacker profile
            <br>
            3. Script silently sends attacker Victims session cookie
            <br>
        </h3>
        <h1>
            Outline how the weakness can be avoided</h1>
        <h3>
            1. Don't include user supplied input in the output page
            <br>
            2. Use Content Security Policy (CSP)
            <br>
            3. Primary Recommendation: Output encode all user supplied input 
            <br>
            4. Perform white list input validation on all user input to be included in page
            <br>
            5. For large chunks of user supplied HTML, use OWASPâs AntiSamy to sanitize this HTML to make it safe
            <br></h3>
        <h1>
            <a href ="https://www.owasp.org/index.php/Top_10_2013">
                External resources for further information </a></h1>
     </body>
</html>               