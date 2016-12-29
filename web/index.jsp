<%-- 
    Document   : frame
    Created on : Dec 27, 2016, 10:13:53 AM
    Author     : E016233
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="options" class="page.Options" scope="session"/>
<jsp:useBean id="content" class="page.Content" scope="session"/>
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
                for (short i = 0; i < 18; i++) {
                    out.println(
                            "<input class=\"option\" id=\"option" + i + "\" type=\"submit\" name=\""
                            + options.getOptionName(i) + "\" value=\"" + options.getOptionValue(i) + 
                                    "formid=\"" + options.getOptionForm(i) + "\">"
                    );
                    if ((i + 1) % 6 == 0) {
                        out.println("<br>");
                    }
                }
            %>
        </div>
        <div id="content">
            <%=content.getHtml()%>
        </div>
        <form id="selected" method="post" action="SelectionServlet"></form>
    </body>
</html>
