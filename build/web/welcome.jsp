<%@page import= "java.io.*"%>
<%@page import= "javax.servlet.*"%>
<%@page import=" javax.servlet.http.*"%>
<%@ page errorPage="exceptionHandler.jsp" %>



<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Welcome</title>
    </head>
    
    <body>   
        <%-- the form is for the exception ,which is used by clicking submit--%>
        <form action="ServletA10" method="get">
            Exception:
            <input type="submit" value ="Exception"><br>           
        </form>
        
         <%-- the list of the top10 ,it is a drop down selection list.--%>       
        <form action="switch.jsp" method="post" name="myform">           
            Apartment:<select name ="top10">
                <option value="default"> 
                    <% //get the value from the cookie
                        Cookie c[]= request.getCookies();
                        // display for the first time,decide when and how to display the cookies
                        if (c != null){
                            for(int x=0;x<c.length;x++){
                                if(c[x].getName().equals("top10")){                                                                           
                    %>
               <%--write the value of cookies to the html--%>            
                <%=c[x].getValue()%>
                    <%
                                }}}
                    %>                   
                </option>
                <option value ="A1 Injection Flaws"> A1 Injection Flaws </option>
                <option value ="A2 Cross Site Scripting"> A2 Cross Site Scripting </option>
                <option value ="A3 Broken Authentication and Session Management"> A3 Broken Authentication and Session Management </option> 
                <option value ="A4 Insecure Direct Object References"> A4 Insecure Direct Object References </option>
                <option value ="A5 Cross Site Request Forgery (CSRF)"> A5 Cross Site Request Forgery (CSRF) </option>
                <option value ="A6 Security MisconfiguraSon"> A6 Security MisconfiguraSon </option>
                <option value ="A7 Insecure Cryptographic Storage"> A7 Insecure Cryptographic Storage </option>
                <option value ="A8 Failure to Restrict URL Access"> A8 Failure to Restrict URL Access </option>
                <option value ="A9 Insufficient Transport Layer ProtecSon"> A9 Insufficient Transport Layer ProtecSon </option>
                <option value ="A10 Unvalidated Redirects and Forwards">A10 Unvalidated Redirects and Forwards </option>
            </select>    
                <%-- add a submit button to trigger the form--%>       
                <input type="submit" value ="display"><br>
          
        </form>       
    
    <h2>
        <%-- the list of the project requirement--%>       
        1 "GET servlet " -------------------Servlet10.java<br>
        2 "POST servlet" ------------------Servlet9.java<br>
        3 "JSP page" -----------------------welcome.jsp<br>
        4 "JSP error page"----------------welcome.jsp, 
             click the "Exception" Button can cause the Exception<br>
        5 "JSP declaration element"-----switch.jsp line 18 <br>
        6 "JSP expression element"------welcome.jsp line 34 <br>      
    </h2> 
    </body>
    
</html>












