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
            OWASP-4-Insecure Direct Object References
            <br>
            <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="back to welcomepage">
            <br>
            <br>
            A general description of the problem</h1>
        <h3>
            This is part of enforcing proper Authorization ,along with  Failure to Restrict URL Access
            <br>
            There are some common mistakes,such asOnly listing the authorized objects for the current user, or
            Hiding the object references in hidden field and then not enforcing these restrictions on the server side
        </h3>
        <h1>
            <br>
            Outline typical impact of attacks exploiting that weakness
        </h1>
        <h3>
            Users are able to access unauthorized files or data
        </h3>
        <h1>
            <br>
            Describe (in outline form) a typical attack scenario</h1>
        <h3>
            1. Attacker notices his acct parameter is 6065
            <br>
            2. He modifies it to a nearby number6066
            <br>
            3. Attacker views the victim's account information
            <br>
        </h3>
        <h1>
            Outline how the weakness can be avoided</h1>
        <h3>
            1. Eliminate the direct object reference
            <br>
            1.1  Replace them with a temporary mapping value (e.g. 1, 2, 3)
            <br>
            1.2  ESAPI provides support for numeric & random mappings
            <br>
            (IntegerAccessReferenceMap & RandomAccessReferenceMap)
            2. Validate the direct object reference
            <br>
            2.1 Verify the parameter value is properly formatted
            <br>
            2.2 Verify the user is allowed to access the target object
            <br>
            2.3 Verify the requested mode of access is allowed to the target object (e.g., read, write, delete)
            <br></h3>
        <h1>
            <a href ="https://www.owasp.org/index.php/Top_10_2013">External resources for further information </a></h1>
    </body>
</html>    