<%
String currentUser = "Guest";
String secretData = "Access Denied";
Cookie[] cookies = request.getCookies();
if (cookies != null) {
    for (Cookie c : cookies) {
        if ("JSESSIONID".equals(c.getName()) && "admin_token".equals(c.getValue())) {
            currentUser = "Administrator";
            secretData = "flg{c00k1e_$anDw1ch}";
        }
    }
}
%>
<h2>Current Role: <%= currentUser %></h2>
<p style="color:red; font-size: 18px; font-weight:bold;"><%= secretData %></p>
<hr>
<b>Cookies:</b><br>
<%
if (cookies != null) {
    for(Cookie c : cookies) {
        out.println(c.getName() + " = " + c.getValue() + "<br>");
    }
}
%>