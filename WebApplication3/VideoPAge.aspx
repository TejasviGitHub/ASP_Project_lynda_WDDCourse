<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VideoPAge.aspx.cs" Inherits="WebApplication3.VideoPAge" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
     <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/jquery-ui.js"></script>
    <script src="Scripts/jquery-ui.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>

        * {
            box-sizing: border-box
        }

        body {
            font-family: "Lato", sans-serif;
            padding: 0px;
        }

        /* Style the tab */

        * {
            margin: 0;
            padding: 0;
        }

       

  

        .hd {
            height: 30px;
        }

        .bd {
            height: 400px;
            padding: 10px 30px;
            font-size: 50px;
        }

            .bd > div {
                display: none;
            }

            .bd .show {
                display: block;
            }
/*
            
        .tab {
            float: left;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
            width: 30%;
            height: 300px;
        }*/

            /* Style the buttons inside the tab */
            .tab button {
                display: block;
                background-color: inherit;
                color: black;
                padding: 22px 16px;
                width: 100%;
                border: none;
                outline: none;
                text-align: left;
                cursor: pointer;
                transition: 0.3s;
                font-size: 17px;
            }

                /* Change background color of buttons on hover */
                .tab button:hover {
                    background-color: azure;
                }

                /* Create an active/current "tab button" class */
                .tab button.active {
                    background-color: #ccc;
                }

        /* Style the tab content */
        .tabcontent {
            float: left;
            padding: 0px 12px;
            border: 1px solid #ccc;
            width: 100%;
            border: none;
            height: auto;
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
        .navbar-inverse .navbar-nav>.active>a{
            background-color: #342cc5;
        }
       
        .no-overflow {
            margin-left: auto;
            margin-right: auto;
            overflow: hidden;
        }

        .rotator {
            margin-top: 50px;
        }

        .margin-bottom {
            margin-bottom: 50px;
        }
        .videostyle{
            width:100%;
            height:auto;
        }
        .no-scroll{
            margin-left:0px;
            margin-right:0px;
            overflow: hidden;
        }

        .float-right {
            float: right;
        }
        
    </style>
</head>
<body>
    <div class="no-scroll no-padding-left-right container-fluid">

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
                        </ul>
                        
                      
                    </div>
                </nav>
              
            </div>
        </div>
        <br /><br />
    <div class="row col-md-12">
                <div class="container-fluid col-4">
                    <div class="tab">
                        <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">Chapter 1 - Introduction</button>
                        <button class="tablinks" onclick="openCity(event, 'Paris')">Chapter 2 - HTML </button>
                        <button class="tablinks" onclick="openCity(event, 'Tokyo')">Chapter 3 - Creating webpage</button>
                    </div>
                </div>

                <div class="container-fluid col-8">
                    <div id="London" class=" tabcontent">
                        <video class="videostyle" controls>
                            <source src="Videos/004 Introdution.mp4" type="video/mp4" />
                            <track src="Subtitles/ch1en.vtt" kind="subtitles" srclang="en" label="English" default />
                            <track src="Videos/Arabic.vtt" kind="subtitles" srclang="es" label="Spanish" />
                            <track src="Videos/Arabic.vtt" kind="subtitles" srclang="es" label="Arabic" />
                            <track src="Subtitles/ch1frnch.vtt" kind="subtitles" srclang="es" label="French" />

                        </video>
                    </div>

                    <div id="Paris" class="container-fluid tabcontent">
                        <video controls class="videostyle">
                            <source src="Videos/005 What is HTML.mp4" type="video/mp4" />
                            <track src="Subtitles/ch2en.vtt" kind="subtitles" srclang="en" label="English" default />
                            <track src="Subtitles/ch2spn.vtt" kind="subtitles" srclang="es" label="Spanish" />
                            <track src="Videos/Arabic.vtt" kind="subtitles" srclang="es" label="Arabic" />
                            <track src="Subtitles/ch1frnch.vtt" kind="subtitles" srclang="es" label="French" />

                        </video>
                    </div>

                    <div id="Tokyo" class="container-fluid  tabcontent">
                        <video controls class="videostyle">
                            <source src="Videos/006 Create A Web Page.mp4" type="video/mp4" />
                            <track src="Subtitles/ch3en.vtt" kind="subtitles" srclang="en" label="English" default />
                            <track src="Subtitles/ch3spn.vtt" kind="subtitles" srclang="es" label="Spanish" />
                            <track src="Videos/Arabic.vtt" kind="subtitles" srclang="es" label="Arabic" />
                            <track src="Subtitles/ch1frnch.vtt" kind="subtitles" srclang="es" label="French" />
                        </video>
                    </div>
                </div>
        <div class="container-fluid col-md-12">

            <br /><br /><br /><br /><br />
            <div class="no-padding-left-right  container-fluid tab-bar">
                <div class="container-fluid">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#home">Transcript</a></li>
                            <li><a data-toggle="tab" href="#menu">Course content</a></li>
                            <li><a data-toggle="tab" href="#menu2">Instructor Details</a></li>

                        </ul>

                        <div class="tab-content">
                            <div id="home" class="tab-pane fade in active">
                                <h3>Chapter 1 – Introduction to HTML (English)</h3>
                                <p>
                                    HTML 5 Introduction

                                    What is HTML?
                                    HTML is a markup language for describing web documents.
                                    HTML stands for Hyper Text Markup Language. A markup language is a set of markup tags.
                                    HTML documents are described by HTML tags. Each HTML tag describes different document content. What is <!DOCTYPE HTML>
                                    in HTML?
                                    The DOCTYPE declaration defines the document type to be HTML. The <!DOCTYPE> declaration help the browser to display a web page correctly. There are different document types on the web. To display a document correctly, the browser must know both type and version.
                                    Both type and version. The doctype declaration is not case sensitive. All cases are acceptable. In this section I will work on lists, images, tables, text formatting, etc. At the end of this section I will work on project and you will be create a simple sport website with HTML.
                                </p>
                            </div>
                            <div id="menu1" class="tab-pane fade">
                                <h3>Menu 1</h3>
                                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            </div>
                            <div id="menu2" class="tab-pane fade">
                                <h3>Menu 2</h3>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                            </div>
                            <div id="menu3" class="tab-pane fade">
                                <h3>Menu 3</h3>
                                <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                            </div>
                        </div>
                </div>
            </div>
            </div>
        </div>

    </div>
        <script>
            function openCity(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }

            // Get the element with id="defaultOpen" and click on it
            document.getElementById("defaultOpen").click();

          
        </script>

        <script src="Scripts/jquery-3.0.0.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js"></script>
        <script src="slider.js"></script>
     
</body>
   
</html>
