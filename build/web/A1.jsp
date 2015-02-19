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
        <meta charset="UTF-8">
        <title>OWASP-1-Injection</title>
    </head>
    
    <body>        
        <h1>
            OWASP-1-Injection
            <br><input type="button" name="Submit" onclick="javascript:history.back(-1);" value="back to welcomepage">
            <br><br>A general description of the problem
        </h1>
        <h3>
            Tricking an application into including unintended commands in the data sent to an interpreter
        </h3>
        <h1>
            <br> Outline typical impact of attacks exploiting that weakness
        </h1>
        <h3>
            Usually severe. Entire database can usually be read or modified<br>
            May also allow full database schema, or account access, or even OS level access
        </h3>
        <h1>
            <br> Describe (in outline form) a typical attack scenario
        </h1>
        <h3>
            1. Application presents a form to the attacker<br>
            2. Attacker sends an attack in the form data<br>
            3. Application forwards attack to the database in a SQL query<br>
            4. Database runs query containing attack and sends encrypted results back to application<br>
            5. Application decrypts data as normal and sends results to the user<br>
        </h3>
        <h1>
            Outline how the weakness can be avoided</h1>
        <h3>
            1. Avoid the interpreter entirely, or use an interface that supports bind variables <br>
            2. Bind variables allow the interpreter to distinguish between code and data<br>
            3. Encode all user input before passing it to the interpreter<br>
            4. Always perform white list input validation on all user supplied input<br>
            5. Always minimize database privileges to reduce the impact of a flaw<br>
        </h3>
        <h1>
            <a href ="https://www.owasp.org/index.php/SQL_InjecSon_PrevenSon_Cheat_Sheet">
                External resources for further information 
            </a>
        </h1>
    </body>
</html>

