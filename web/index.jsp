<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet"/>
        <title>Calendar</title>
    </head>
    <body>
<p style="font-size:48px; text-align: center; color:#000">Web Calendar - Task Manager</p>
<p style="font-size:20px; text-align: center; color:#000; margin-top:50px">Please sign in below, or if you are not registered, create a new account.</p>
        <form class="singin" method="post" action="login.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                </thead>
                <tbody>
		    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Reset" /></td>
                        <td><input type="submit" value="Login" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Not registered yet? <a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
