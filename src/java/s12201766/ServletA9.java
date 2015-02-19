/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package s12201766;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class ServletA9 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)         
            throws ServletException, IOException {
         response.setContentType("text/html;charset=UTF-8");
         //link to the A9.jsp
        response.sendRedirect("A9.jsp");
        
   }


}
