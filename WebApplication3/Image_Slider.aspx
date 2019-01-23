<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Image_Slider.aspx.cs" Inherits="WebApplication3.Image_Slider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!DOCTYPE html>
<html>
<head>
  	<title>Image Slider</title>
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css'>
	<link rel="stylesheet" href="slider.css">
</head>

<body>


  <div class="container">
     <div class="row">
	      <div class="col-md-12 heroSlider">
	         <!-- Second Slider -->
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

			<!-- arrows -->
			<div class="prev2">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			</div>
			<div class="next2">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			</div>				
	      </div>
    </div>
  </div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js'></script>
  <script  src="slider.js"></script>
</body>

</html>

        </div>
    </form>
</body>
</html>
