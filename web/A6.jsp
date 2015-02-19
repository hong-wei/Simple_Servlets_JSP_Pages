<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ page errorPage="exceptionHandler.jsp" %>
<html>
    <head>
        <title>MyForm</title>
        <meta charset="UTF-8">
    </head>
    <body>        
        <h1>
            OWASP-A6-Security Misconfiguration
            <br>
            <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="back to welcomepage">
            <br>
            <br>
            A general description of the problem</h1>
        <h3>
            1. Web applications rely on a secure foundation<br>
            2. Think of all the places your source code goes<br>
            3. Security should not require secret source code<br>
            4. CM must extend to all parts of the application<br>
        </h3>
        <h1>
            <br>
            Outline typical impact of attacks exploiting that weakness
        </h1>
        <h3>
            1. Install backdoor through missing OS or server patch
            <br>
            2. Unauthorized access to default accounts, application functionality or data, 
            or unused but accessible functionality due to poor server configuration
        </h3>
        <h1>
            <br>
            Describe (in outline form) a typical attack scenario</h1>
        <h3>
            1. Scenario #1: The app server admin console is automatically installed and not removed. 
               Default accounts aren't changed. Attacker discovers the standard admin pages are on your server, 
               logs in with default passwords, and takes over. 
            <br>
            2. Scenario #2: Directory listing is not disabled on your server. 
               Attacker discovers she can simply list directories to find any file. 
               Attacker finds and downloads all your compiled Java classes, 
               which she decompiles and reverse engineers to get all your custom code. 
               She then finds a serious access control flaw in your application. 
            <br>
            3. Scenario #3: App server configuration allows stack traces to
               be returned to users, potentially exposing underlying flaws. 
               Attackers love the extra information error messages provide.
            <br>
            4. Scenario #4: App server comes with sample applications that are not removed
               from your production server. Said sample applications 
               have well known security flaws attackers can use to compromise your server. 
            <br>
        </h3>
        <h1>
            Outline how the weakness can be avoided</h1>
        <h3>
            1.Verify your systems configuration management<br>
            1.1 Secure configuration  hardening guideline<br>
            1.2 Must cover entire platform and application<br>
            1.3 Analyze security effects of changes
            <br>
            2. Can you dump the application configuration<br>
            2.1 Build reporting into your process<br>
            2.2 If you can't verify it, it isn't secure<br>
            <br>
            3. Verify the implementation
            3.1 Scanning finds generic configuration and missing patch problems
            <br>
        </h3>
        <h1>
            <a href ="https://www.owasp.org/index.php/Top_10_2013">External resources for further information </a></h1>
    </body>
</html>