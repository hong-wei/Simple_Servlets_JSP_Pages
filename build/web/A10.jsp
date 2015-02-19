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
            OWAASP-A10-Unvalidated Redirects and Forwards
            <br>
            <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="back to welcomepage">
            <br>
            <br>
            A general description of the problem</h1>
        <h3>
            Attacker links to unvalidated redirect and tricks victims into clicking it. 
            Victims are more likely to click on it, since the link is to a valid site. 
            Attacker targets unsafe forward to bypass security checks.
        </h3>
        <h1>
            <br>
            Outline typical impact of attacks exploiting that weakness
        </h1>
        <h3>
            1. Technical Impacts
            <br>
            Such redirects may attempt to install malware or trick victims into disclosing passwords 
            or other sensitive information. Unsafe forwards may allow access control bypass.
            <br>
            2. Business Impacts
            <br>
            Consider the business value of retaining your users? trust.
        </h3>
        <h1>
            <br>
            Describe (in outline form) a typical attack scenario</h1>
        <h3>
            Scenario #1: The application has a page called redirect.jsp which takes a single parameter named 
                         The attacker crafts a malicious URL that redirects users to a malicious site 
                         that performs phishing and installs malware. 
            <br>
            Scenario #2:The application uses forward to route requests between different parts of the site. 
                        To facilitate this, some pages use a parameter to indicate where the user should be sent 
                        if a transaction is successful. In this case, the attacker crafts a URL 
                        that will pass the applications access control check and then forward the attacker 
                        to an administrative function that she would not normally be able to access. 
            <br>
        </h3>
        <h1>
            Outline how the weakness can be avoided</h1>
        <h3>
            1. Simply avoid using redirects and forwards.<br> 
            2. If used, don?t involve user parameters in calculating the destination. This can usually be done.<br>
            3. If destination parameters can?t be avoided, ensure that the supplied value is valid, and authorized for the user. 
            <br>
        </h3>
        <h1>
            <a href ="https://www.owasp.org/index.php/Top_10_2013">External resources for further information </a></h1>
    </body>
</html>   