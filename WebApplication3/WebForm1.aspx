<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SelfPacedLearningManagementSystems.VideoForm" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .vertical-menu {
            width: 200px;
        }

            .vertical-menu a {
                background-color: #eee;
                color: black;
                display: block;
                padding: 12px;
                text-decoration: none;
            }

                .vertical-menu a:hover {
                    background-color: #ccc;
                }

                .vertical-menu a.active {
                    background-color: #4CAF50;
                    color: white;
                }
    </style>
</head>
<body>

    <h1>Vertical Menu</h1>
    <div id="first">
        <div class="vertical-menu">
            <a href="#" class="active">Home</a>
            <a href="#">Link 1</a>
            <a href="#">Link 2</a>
            <a href="#">Link 3</a>
            <a href="#">Link 4</a>
        </div>
    </div>
    <div id="second">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/VS6UOyTb5eU"
                frameborder="0" allowfullscreen></iframe>
        </div>
    </div>
    
   
  
    


</body>
</html>
