<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="slideshow.aspx.cs" Inherits="WebApplication3.slideshow" EnableEventValidation="false" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="/Scripts/jquery-ui.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="/Scripts/jquery-ui.min.js"></script>
    <link href="CSS/jquery-ui.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/Site.css" rel="stylesheet" />
    <link rel="stylesheet" href="slider.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">
                <img src="Images/LOGO.PNG" /></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>

                <div class="form-inline my-2 my-lg-0">
                    <asp:TextBox ID="txtSearchCourse" runat="server" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"></asp:TextBox>
                    <asp:Button ID="btnSearch" OnClick="btnSubmit_click" class="btn btn-outline-success my-2 my-sm-0" type="submit" Text="Search" runat="server" />
                </div>
                <div>
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </div>
            </div>
        </nav>


        <!-- <div class="container"> 
        <div class="center">
          <div class="userimage">
              <img src="~/Content/image/user.png" onclick="" style="width:50px;height:50px;"/>
          </div>

          <div class="image">
              <img src="~/Content/image/logo-tv-2.jpg" style="width:120px;height:100px;">
          </div>

          <div class="dropdown">
            <button onclick="myFunction()" class="dropbtn">Menu</button>
            <div id="myDropdown" class="dropdown-content">
            <a href="#category">Categoary</a>
            <a href="#course">Course</a>
          </div>
        <!-- HTML for SEARCH BAR 
          <div id="tfnewsearch" style="text-align: center; width: 100%;">
            <p class="textdiv">Self-learning Website</p> 
            <input type="text" id = "sb" class="tftextinput" size="100" maxlength="120" placeholder="  Search..                                                                                                        &#128269" >
          </div>
        </div>
      </div>-->

        <!--<div class="container">
       <div class="row">
  	      <div class="col-md-12 heroSlider">
            <!-- Second Slider 
  	        <div class="slider responsive2">
  	          <div>
                <img src="Images/angular.png" />
  			  </div>   
  			  <div>
                <img src="Images/asp.png" />
  			  </div>
  			  <div>
                <img src="Images/c.png" />
  			  </div>
  			  <div>
                <img src="Images/css3.png" />
  			  </div>
              <div>
                <img src="Images/angular.png" />
  			  </div>       
  			  <div>
                <img src="Images/asp.png" />
  			  </div>
  			  <div>
                <img src="Images/c.png" />
  			  </div>
  			  <div>
                <img src="Images/css3.png" />
  			  </div>
  	        </div>
          <!-- arrows 
          <div class="prev2">
  		     <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          </div>
          <div class="next2">
  		     <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          </div>			
        </div>
      </div>
    </div>
      -->

        <marquee direction="left" vspace="50" hspace="200">
      <img src="Images/Languages.png" />
    </marquee>

        <div class="container-fluid row col-12">
            <div class="col col-6">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                        <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/slider.xml" BackColor="WindowFrame"></asp:AdRotator>
                        <asp:Timer ID="Timer2" runat="server" Interval="500"></asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

            <div class="col col-6">
                <section class="mb-4">
                    <h2 class="h1-responsive font-weight-bold text-center my-4">Contact us</h2>
                    <!--Section description-->
                    <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to contact us.</p>
                    <div class="row">
                        <div class="col-md-12">
                            <form id="contact-form" name="contact-form" action="mail.php" method="POST">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="md-form mb-0">
                                            <input type="text" id="name" name="name" class="form-control">
                                            <label for="name" class="">Your name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="md-form mb-0">
                                            <input type="text" id="email" name="email" class="form-control">
                                            <label for="email" class="">Your email</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="md-form mb-0">
                                            <input type="text" id="subject" name="subject" class="form-control">
                                            <label for="subject" class="">Subject</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="md-form">
                                            <textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea"></textarea>
                                            <label for="message">Your message</label>
                                        </div>
                                    </div>
                                </div>
                            </form>

                            <div class="text-center text-md-left">
                                <a class="btn btn-block btn-dark" style="color: white;" onclick="document.getElementById('contact-form').submit();">Send</a>
                            </div>

                            <div class="status"></div>
                        </div>
                    </div>
            </div>
        </div>
    </form>
    -
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
