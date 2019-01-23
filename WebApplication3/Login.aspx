<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" EnableEventValidation="false" Inherits="WebApplication3.Login" %>

<!DOCTYPE html>

<html lang="en" class="no-js">
<!--<![endif]-->
<head>
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="CSS/style.css" />
    <link rel="stylesheet" type="text/css" href="CSS/animate-custom.css" />
</head>
<body>
    <form id="signinform" runat="server">
        <div class="container">
            <section>
                <div id="container_demo">
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>

                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form action="mysuperscript.php" autocomplete="on">
                                <h1>Log in</h1>
                                <p>
                                    <label for="username" class="uname" data-icon="u">Your email or username </label>
                                    <asp:TextBox ID="username" placeholder="username" runat="server" name="username" required="required" type="text"></asp:TextBox>

                                </p>
                                <p>
                                    <label for="password" class="youpasswd" data-icon="p">Your password </label>
                                    <asp:TextBox ID="password" runat="server" name="password" required="required" type="password"></asp:TextBox>

                                </p>

                                <p class="login button">
                                    <asp:Button ID="Button1" runat="server" Text="LOGIN" />

                                </p>
                                <p class="change_link">
                                    <a href="Home_Page.aspx" class="bounceInLeft" style="float: left">Home</a>
                                    New to LMS ?
									<a href="#toregister" class="to_register bounceInLeft">Join us</a>
                                </p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form action="mysuperscript.php" autocomplete="on">
                                <h1>Sign up </h1>
                                <p>
                                    <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" />
                                </p>
                                <p>
                                    <label for="emailsignup" class="youmail" data-icon="e">Your email</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" />
                                </p>
                                <p>
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" />
                                </p>
                                <p>
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" />
                                </p>
                                <p class="signin button">
                                    <input type="submit" value="Sign up" />
                                </p>
                                <p class="change_link">
                                    <a href="Home_Page.aspx" class="bounceInLeft" style="float: left">Home</a>
                                    Already a User? 
									<a href="#tologin" class="to_register bounceInLeft">Go and log in </a>
                                </p>
                            </form>
                        </div>
                    </div>

                </div>
            </section>
        </div>
    </form>
</body>
</html>






