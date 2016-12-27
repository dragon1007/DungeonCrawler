<%-- 
    Document   : frame
    Created on : Dec 27, 2016, 10:13:53 AM
    Author     : E016233
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="options" class="page.Options" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/main.css"/>
        <title></title>
    </head>
    <body>
        <div class="frame" id="upperLeftCorner">             
        </div>
        <div class="frame" id="leftStats">            
        </div>
        <div class="frame" id="upperBanner">            
        </div>
        <div class="frame" id="decisions">
            <%
                for (int i=0;i<18;i++) {
                    out.println(
                            "<input class=\"option\" id=\"option" + i + "\" type=\"submit\" name=\"" +
                               options.getOptionName() + "\" value=\"" + options.getOptionValue() + "\">"
                    );
                }
            %>
<!--            <input class="option" id="option1" type="submit">
            <input class="option" id="option2" type="submit">
            <input class="option" id="option3" type="submit">
            <input class="option" id="option4" type="submit">
            <input class="option" id="option5" type="submit">
            <input class="option" id="option6" type="submit">
            <br>
            <input class="option" id="option7" type="submit">
            <input class="option" id="option8" type="submit">
            <input class="option" id="option9" type="submit">
            <input class="option" id="option10" type="submit">
            <input class="option" id="option11" type="submit">
            <input class="option" id="option12" type="submit">
            <br>
            <input class="option" id="option13" type="submit">
            <input class="option" id="option14" type="submit">
            <input class="option" id="option15" type="submit">
            <input class="option" id="option16" type="submit">
            <input class="option" id="option17" type="submit">
            <input class="option" id="option18" type="submit">            -->
        </div>
        <form id="selected" method="post" action="SelectionServlet"></form>
    </body>
</html>
