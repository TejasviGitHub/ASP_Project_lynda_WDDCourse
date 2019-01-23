<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="Ajax" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/buttonpopup.css" rel="stylesheet" />
    <link href="CSS/PopupModal.css" rel="stylesheet" />
    <style type="text/css">
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }



        .modalbackground {
            background-color: gray;
            filter: alpha(opacity=80);
            opacity: 0.8;
            z-index: 10000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" ScriptMode="Release"></asp:ScriptManager>

        <div>
            <asp:Button ID="Butbtnpopup" runat="server" />

            <asp:Panel ID="Panel1" runat="server" CssClass="modal-content" Align="Center" Style="display: none;">
                <div class="container">
                    <label for="uname"><b>Username</b></label>
                    <asp:TextBox ID="LoginUsername" placeholder="Enter Username" runat="server" name="username" type="Text"></asp:TextBox>


                    <label for="psw"><b>Password</b></label>
                    <asp:TextBox ID="LoginPassword" placeholder="Enter Password" runat="server" name="psw" type="password"></asp:TextBox>

                    <asp:Button ID="Button1" Class="mybtnstyle" OnClick="Login_Click" runat="server" Text="Login" />



                </div>

                <div class="container" style="background-color: #f1f1f1">
                    <asp:Button ID="ButtonRegister" runat="server" Text="Register" />
                    <button type="button" onclick="document.getElementById('Panel1').style.display='none'" class="cancelbtn">Cancel</button>

                </div>

            </asp:Panel>

      
            <Ajax:ModalPopupExtender ID="MP1" runat="server" TargetControlID="Butbtnpopup" PopupControlID="Panel1" CancelControlID="btnCancel" BackgroundCssClass="modalbackground"></Ajax:ModalPopupExtender>
          
        </div>
    </form>
    <script>

        function switchtoRegister() {
            document.getElementById('Panel2').style.display = 'block';
            document.getElementById('Panel1').style.display = 'none';
        }
    </script>
</body>
</html>


