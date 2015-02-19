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
            OWAASP-A8-Failure to Restrict URL Access
            <br>
            <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="back to welcomepage">
            <br>
            <br>
            A general description of the problem</h1>
        <h3>
            Attacker, who is an authorized system user, simply changes the URL to a privileged page. 
            Is access granted? Anonymous users could access private pages that aren't protected.
        </h3>
        <h1>
            <br>
            Outline typical impact of attacks exploiting that weakness
        </h1>
        <h3>
            1. Technical Impacts
            <br>
            Such flaws may allow some or even all accounts to be attacked. 
            Once successful, the attacker can do anything the victim could do. 
            Privileged accounts are frequently targeted.
            <br>
            2. Business Impacts
            <br>
            Consider the business value of the exposed functions and the data they process.<br>
            Also consider the impact to your reputation if this vulnerability became public.
        </h3>
        <h1>
            <br>
            Describe (in outline form) a typical attack scenario</h1>
        <h3>
            The attacker simply force browses to target URLs. 
            Consider the following URLs which are both supposed to require authentication. 
            Admin rights are also required for access to the admin get app Info  page. 
            If the attacker is not authenticated, and access to either page is granted, then unauthorized access was allowed. 
            If an authenticated, non-admin, user is allowed to access the  admin get app Info page, 
            this is a flaw, and may lead the attacker to more improperly protected admin pages. 
            <br>
        </h3>
        <h1>
            Outline how the weakness can be avoided</h1>
        <h3>
            1. The authentication and authorization policies be role based, 
               to minimize the effort required to maintain these policies. 
            <br>
            2. The policies should be highly configurable, in order to minimize any hard coded aspects of the policy. 
            <br>
            3. The enforcement mechanism(s) should deny all access by default, 
               requiring explicit grants to specific users and roles for access to every page. 
            <br>
            4. If the page is involved in a workflow, check to make sure the conditions are in the proper state to allow access. 
            <br>
        </h3>
        <h1>
            <a href ="https://www.owasp.org/index.php/Top_10_2013">External resources for further information </a></h1>
    </body>
</html>    