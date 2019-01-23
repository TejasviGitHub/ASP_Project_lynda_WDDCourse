<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="WebApplication3.Home_Page" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="Ajax" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link href="CSS/PopupModal.css" rel="stylesheet" />
    <link href="CSS/buttonpopup.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/jquery-ui.js"></script>
    <script src="Scripts/jquery-ui.min.js"></script>
    <link href="CSS/jquery-ui.css" rel="stylesheet" />
    <link href="CSS/jquery-ui.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="CSS/style.css" />
    <link rel="stylesheet" type="text/css" href="CSS/animate-custom.css" />

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 40%; /* Could be more or less, depending on screen size */
        }



        .modalbackground {
            background-color: gray;
            filter: alpha(opacity=80);
            opacity: 0.8;
            z-index: 10000;
        }

        .navbar {
            border-radius: 0;
        }

        footer {
            background-color: #337ab7;
        }

        .img {
            z-index: 3;
        }

        .margin {
            margin: 20px;
        }

        .no-padding-left-right {
            padding-left: 0px;
            padding-right: 0px;
        }

        .navbar-collapse.collapse {
            margin-top: 30px;
            position: relative;
        }

        .navbar {
            background-color: #337ab7;
            border-color: #505050;
            overflow: hidden;
        }

        .navbar-inverse .navbar-nav > li > a {
            color: floralwhite;
        }

        .navbar-inverse .navbar-nav > .active > a {
            background-color: #342cc5;
        }

        .no-overflow {
            margin-left: auto;
            margin-right: auto;
            overflow: hidden;
        }

        .text-left {
            margin-left: 70px;
            float: left;
        }

        .rotator {
            margin-top: 50px;
        }

        .margin-bottom {
            margin-bottom: 50px;
        }

        .float-right {
            float: right;
        }

        

        .move-to-center {
            padding-left: 300px;
        }

        .wordart {
            font-family: Arial, sans-serif;
            font-size: 4em;
            font-weight: bold;
            position: relative;
            z-index: 1;
            display: inline-block;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }


            .wordart.slate {
                transform: scale(1, 1.5);
                -webkit-transform: scale(1, 1.5);
                -moz-transform: scale(1, 1.5);
                -o-transform: scale(1, 1.5);
                -ms-transform: scale(1, 1.5);
            }

                .wordart.slate .text {
                    font-family: Times, 'Times New Roman', serif;
                    font-weight: normal;
                    color: #2F5485;
                    text-shadow: 0.03em 0.03em 0px #B3B3B3;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager2" runat="server" ScriptMode="Release"></asp:ScriptManager>
        <div class="no-overflow no-padding-left-right row">
            <div class="img col col-sm-1">
                <img src="Images/logo.PNG" style="height: 100px; width: 100px;" />
            </div>
            <div class="no-padding-left-right container-fluid  col-lg-11 text-center">
                <nav class="navbar navbar-inverse">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="Home_Page.aspx"><span class="glyphicon glyphicon-home">&nbsp;</span>Home</a></li>
                            <li><a href="VideoPAge.aspx">Courses</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <div class="btn-group">
                                    <asp:Label ID="LoginSuccess" runat="server" Visible="false" ForeColor="White" Font-Bold="true" Font-Size="Large"></asp:Label>
                                    <asp:Button ID="btnSubmit" class="btn btn-default" runat="server" Text="Login"></asp:Button>
                                    <asp:Panel ID="Panel1" runat="server" CssClass="modal-content" Align="Center" Style="display: none;">
                                        <div class="containerpop">
                                            <asp:Label ID="LoginFail" runat="server" Text="Invalid username or password" Visible="false" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                                            <br />
                                            <label for="uname"><b>Username</b></label>
                                            <asp:TextBox ID="LoginUsername" placeholder="Enter Username" runat="server" name="username" type="Text"></asp:TextBox>


                                            <label for="psw"><b>Password</b></label>
                                            <asp:TextBox ID="LoginPassword" placeholder="Enter Password" runat="server" name="psw" type="password"></asp:TextBox>



                                        </div>

                                        <div class="containerpop" style="background-color: #f1f1f1">

                                            <asp:Button ID="Button2" Class="cancelbtn" OnClick="Cancel_Click" runat="server" Text="Cancel" />

                                            <asp:Button ID="Button1" Class="mybtnstyle" OnClick="Login_Click" runat="server" Text="Login" />


                                        </div>

                                    </asp:Panel>


                                    <Ajax:ModalPopupExtender ID="MP1" runat="server" TargetControlID="btnSubmit" PopupControlID="Panel1" CancelControlID="btnCancel" BackgroundCssClass="modalbackground"></Ajax:ModalPopupExtender>




                                </div>
                            </li>
                        </ul>
                        <div class="form-inline my-2 my-lg-0">
                            <asp:TextBox ID="txtSearchCourse" runat="server" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"></asp:TextBox>
                            <asp:Button ID="btnSearch" OnClick="btnSubmit_click" class="btn btn-outline-success my-2 my-sm-0" type="submit" Text="Search" runat="server" />
                        </div>
                    </div>
                </nav>
                <!--<div>
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </div>-->
            </div>
        </div>
        <div class="container-fluid row col-md-10 col-md-offset-3 wordart slate" runat="server" id="divHeader" >

            <h1 class="text"> Welcome to LMS. To know more about us please login.</h1>
        </div>

        <div class="margin-bottom no-overflow container-fluid row">
            <div class="rotator container-fluid col-md-2">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>

                        <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/slider.xml" BackColor="WindowFrame"></asp:AdRotator>
                        <asp:Timer ID="Timer2" runat="server" Interval="500"></asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="container-fluid col-md-10">
                <marquee direction="left" vspace="50" hspace="20">
                  <img src="Images/banner.png" style="height:200px;" />
                  <img src="Images/banner.png" style="height:200px;" />
                  <img src="Images/banner.png" style="height:200px;" />
                  <img src="Images/banner.png" style="height:200px;" />
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>
                  <img src="Images/banner.png" style="height:200px;"/>        
               </marquee>
            </div>
        </div>

        <div class="container" id="divcontents" runat="server" visible="false">
            <div class="row">
                <a class="col-sm-4" href="VideoPAge.aspx">
                    <div class="panel panel-primary">
                        <div class="panel-heading">HTML</div>
                        <div class="panel-body">
                            <img src="Images/html5.png" class="img-responsive" style="height: 300px; width: 100%;" alt="Image">
                        </div>
                        <div class="panel-footer">Start this course for FREE!</div>
                    </div>
                </a>
                <a class="col-sm-4" href="VideoPAge.aspx">
                    <div class="panel panel-primary">
                        <div class="panel-heading">CSS</div>
                        <div class="panel-body">
                            <img src="Images/css3.png" class="img-responsive" style="height: 300px; width: 100%;" alt="Image">
                        </div>
                        <div class="panel-footer">Start Now!</div>
                    </div>
                </a>
                <a class="col-sm-4" href="VideoPAge.aspx">
                    <div class="panel panel-primary">
                        <div class="panel-heading">ANGULAR</div>
                        <div class="panel-body">
                            <img src="Images/angular.png" class="img-responsive" style="height: 300px; width: 100%;" alt="Image">
                        </div>
                        <div class="panel-footer">Learn JavaScript Now!</div>
                    </div>
                </a>
            </div>
        </div>
        <br />

        <footer class="container-fluid text-center">
            <h3>Learning Management System</h3>
            <form class="form-inline">
                <b>Contact:</b> john@northeastern.edu
            </form>
        </footer>


    </form>
</body>
<script type="text/javascript">
    $(document).ready(function () {
        $('#<%= txtSearchCourse.ClientID %>').autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: "Course_Search.asmx/GetCourseNames",
                    data: "{ 'courseName': '" + request.term + "' }",
                    type: "POST",
                    dataType: "json",
                    contentType: "application/json;charset=utf-8",
                    success: function (data) {
                        response(data.d);
                    },
                    error: function (result) {
                        alert('There is a problem processing your request');
                    }
                });
            },
            minLength: 0
        });
    });
</script>
</html>
