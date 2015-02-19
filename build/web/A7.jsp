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
            OWAASP-A7-Insecure Cryptographic Storage
            <br>
            <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="back to welcomepage">
            <br>
            <br>
            A general description of the problem</h1>
        <h3>
            Attackers typically don't break the crypto. 
            They break something else, such as find keys, 
            get cleartext copies of data, or access data via channels 
            that automatically decrypt. <br>
        </h3>
        <h1>
            <br>
            Outline typical impact of attacks exploiting that weakness
        </h1>
        <h3>
            1. Technical impact<br>
            Failure frequently compromises all data that should have been encrypted. 
            Typically this information includes sensitive data such as health records, 
            credentials, personal data, credit cards, etc.<br>
            <br>
            2. Business Impacts<br>
            Consider the business value of the lost data and impact to your reputation. 
            What is your legal liability if this data is exposed? 
            Also consider the damage to your reputation.
        </h3>
        <h1>
            <br>
            Describe (in outline form) a typical attack scenario</h1>
        <h3>
            1. Scenario #1: An application encrypts credit cards in a database to prevent exposure to end users.
               However, the database is set to automatically decrypt queries against the credit card columns, 
               allowing an SQL injection flaw to retrieve all the credit cards in cleartext. 
               The system should have been configured to allow only back end applications to decrypt them, 
               not the front end web application. 
            <br>
            2. Scenario #2: A backup tape is made of encrypted health records, 
               but the encryption key is on the same backup. 
               The tape never arrives at the backup center. 
            <br>
            3. Scenario #3: The password database uses unsalted hashes to store everyone's passwords. 
               A file upload flaw allows an attacker to retrieve the password file. 
               All the unsalted hashes can be brute forced in 4 weeks, 
               while properly salted hashes would have taken over 3000 years.
            <br>
        </h3>
        <h1>
            Outline how the weakness can be avoided</h1>
        <h3>
            1. Considering the threats you plan to protect this data from 
              (e.g., insider attack, external user), make sure you encrypt all such 
              data at rest in a manner that defends against these threats
            <br>
            2. Ensure offsite backups are encrypted, but the keys are managed and backed up separately. 
            <br>
            3. Ensure appropriate strong standard algorithms and strong keys are used, and key management is in place.
            <br>
            4. Ensure passwords are hashed with a strong standard algorithm and an appropriate salt is used. 
            <br>
            5. Ensure all keys and passwords are protected from unauthorized access.
            <br>
        </h3>
        <h1>      
            <a href ="https://www.owasp.org/index.php/Top_10_2013">External resources for further information </a></h1>
    </body>
</html>   