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
            OWAASP-A9-Insufficient Transport Layer ProtecSon
            <br>
            <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="back to welcomepage">
            <br>
            <br>
            A general description of the problem</h1>
        <h3>
            Monitoring users' network traffic can be difficult, but is sometimes easy. 
            The primary difficulty lies in monitoring the proper networks traffic 
            while users are accessing the vulnerable site.
        </h3>
        <h1>
            <br>
            Outline typical impact of attacks exploiting that weakness
        </h1>
        <h3>
            1. Technical Impacts
            <br>
            Such flaws expose individual users' data and can lead to account theft. 
            If an admin account was compromised, the entire site could be exposed. 
            Poor SSL setup can also facilitate phishing and MITM attacks.
            <br>
            2. Business Impacts
            <br>
            Consider the business value of the data exposed on the communications channel 
            in terms of its confidentiality and integrity needs, and the need to authenticate both participants.
        </h3>
        <h1>
            <br>
            Describe (in outline form) a typical attack scenario</h1>
        <h3>
            Scenario #1: A site simply doesn?t use SSL for all pages that require authentication. 
                         Attacker simply monitors network traffic (like an open wireless or their neighborhood cable modem network), 
                         and observes an authenticated victim's session cookie. 
                         Attacker then replays this cookie and takes over the user's session. 
            <br>
            Scenario #2: A site simply uses standard ODBC/JDBC for the database connection,
                         not realizing all traffic is in the clear.
            <br>
        </h3>
        <h1>
            Outline how the weakness can be avoided</h1>
        <h3>
            1. Require SSL for all sensitive pages. Non-SSL requests to these pages should be redirected to the SSL page.<br>            
            2. Set the ?secure? flag on all sensitive cookies. 
            3. Configure your SSL provider to only support strong (e.g., FIPS 140-2 compliant) algorithms.<br>
            4. Ensure your certificate is valid, not expired, not revoked, and matches all domains used by the site. <br>
            5. Backend and other connections should also use SSL or other encryption technologies. <br>
            <br>
        </h3>
        <h1>
            <a href ="https://www.owasp.org/index.php/Top_10_2013">External resources for further information </a></h1>
    </body>
</html>   