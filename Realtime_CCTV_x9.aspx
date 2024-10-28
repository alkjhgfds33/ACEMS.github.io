﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Realtime_CCTV_x9.aspx.cs" Inherits="Realtime_CCTV_x9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <title></title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
	<script src="Scripts/jquery-3.5.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="Scripts/bootstrap.min.js"></script>

    <style type="text/css">
        .w3-btn_green {
            border: 1px solid #00AA00;
            -webkit-box-shadow: #FFFFFF 0px 0px 1px inset;
            -moz-box-shadow: #FFFFFF 0px 0px 1px inset;
            box-shadow: #FFFFFF 0px 0px 1px inset;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
            font-size: 12px;
            font-family: 微軟正黑體;
            padding: 5px 7px 5px 7px;
            background-image: linear-gradient(to bottom, #00AA00,darkgreen);
            display: inline-block;
            outline: 0;
            vertical-align: middle;
            overflow: hidden;
            color: #fff;
            text-align: center;
            transition: .2s ease-out;
            cursor: pointer;
            white-space: nowrap;
            width: 100px;
        }

         .w3-btn_green:hover {
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
            background-image: linear-gradient(to bottom, White,White);
            color: Green;
         }
    </style>
    <script>
        var myVar = setInterval(changeImage, 500);

        function OpenWin(url)
       	{
              window.open(url, 'mywin', 'height=400, width=400, toolbar=no,location=no, status=no')           
        }

        function Navigate(i)
        {           
            switch (i)
            {
                case 1:
                    javascript: window.open("<%=returnUrl(1,"cam")%>");
                    break;
                case 2:
                    javascript: window.open("<%=returnUrl(2,"cam")%>");
                    break;
                case 3:
                    javascript: window.open("<%=returnUrl(3,"cam")%>");
                    break;
                case 4:
                    javascript: window.open("<%=returnUrl(4,"cam")%>");
                    break;

                case 5:
                    javascript: window.open("<%=returnUrl(5,"cam")%>");
                    break;
                case 6:
                    javascript: window.open("<%=returnUrl(6,"cam")%>");
                    break;
                case 7:
                    javascript: window.open("<%=returnUrl(7,"cam")%>");
                    break;
                case 8:
                    javascript: window.open("<%=returnUrl(8,"cam")%>");
                    break;
                case 9:
                    javascript: window.open("<%=returnUrl(9,"cam")%>");
                    break;
            }
        }

        function changeImage()
        {                     
            var n = Math.random();
            var ss = Date.now.toString("HHmmssfff");   

            document.getElementById('ccdImage1').src = "<%=returnUrl(1,"jpg")%>" + '?n=' + n;
            document.getElementById('ccdImage2').src = "<%=returnUrl(2,"jpg")%>" + '?n=' + n;
            document.getElementById('ccdImage3').src = "<%=returnUrl(3,"jpg")%>" + '?n=' + n;
            document.getElementById('ccdImage4').src = "<%=returnUrl(4,"jpg")%>" + '?n=' + n;       
            document.getElementById('ccdImage5').src = "<%=returnUrl(5,"jpg")%>" + '?n=' + n;
            document.getElementById('ccdImage6').src = "<%=returnUrl(6,"jpg")%>" + '?n=' + n;
            document.getElementById('ccdImage7').src = "<%=returnUrl(7,"jpg")%>" + '?n=' + n;
            document.getElementById('ccdImage8').src = "<%=returnUrl(8,"jpg")%>" + '?n=' + n;
            document.getElementById('ccdImage9').src = "<%=returnUrl(9,"jpg")%>" + '?n=' + n;

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="col-lg-12">

           <div class="row">
               <div class="col-sm-4 col-md-4 col-lg-4 bg-info" style="padding: 0px; height: 310px;">
                   <p class="text-light text-center" style="background-color: black; height: 25px; line-height: 30px; font-size: 20px; margin: 0px;">
                       <asp:Label ID="lblTitle1" runat="server" Text=""></asp:Label>
                   </p>
                   <asp:ImageButton ID="ccdImage1" src="images/loading2.png" Style="height: 285px; width: 100%;"
                       runat="server" AutoPostBack="True" ImageAlign="Bottom" ImageUrl="~/img/plus.png"
                       OnClientClick="Navigate(1)" OnClick="s" />
               </div>
               <div class="col-sm-4 col-md-4 col-lg-4 bg-info" style="padding: 0px; height: 310px;">
                   <p class="text-light text-center" style="background-color: black; height: 25px; line-height: 30px; font-size: 20px; margin: 0px;">
                       <asp:Label ID="lblTitle2" runat="server" Text=""></asp:Label>
                   </p>
                   <asp:ImageButton ID="ccdImage2" src="images/loading2.png" Style="height: 285px; width: 100%;"
                       runat="server" AutoPostBack="True" ImageAlign="Bottom" ImageUrl="~/img/plus.png"
                       OnClientClick="Navigate(2)" OnClick="s" />
               </div>
               <div class="col-sm-4 col-md-4 col-lg-4 bg-info" style="padding: 0px; height: 310px;">
                   <p class="text-light text-center" style="background-color: black; height: 25px; line-height: 30px; font-size: 20px; margin: 0px;">
                       <asp:Label ID="lblTitle3" runat="server" Text=""></asp:Label>
                   </p>
                   <asp:ImageButton ID="ccdImage3" src="images/loading2.png" Style="height: 285px; width: 100%;"
                       runat="server" AutoPostBack="True" ImageAlign="Bottom" ImageUrl="~/img/plus.png"
                       OnClientClick="Navigate(3)" OnClick="s" />
               </div>
           </div>

           <div class="row" >              
               <div class="col-sm-4 col-md-4 col-lg-4 bg-info" style="padding: 0px; height: 310px;">
                   <p class="text-light text-center" style="background-color: black; height: 25px; line-height: 30px; font-size: 20px; margin: 0px;">
                       <asp:Label ID="lblTitle4" runat="server" Text=""></asp:Label>
                   </p>
                   <asp:ImageButton ID="ccdImage4" src="images/loading2.png" style="height: 285px; width: 100%;"
                       runat="server" AutoPostBack="True" ImageAlign="Bottom" ImageUrl="~/img/plus.png"
                       OnClientClick="Navigate(4)" OnClick="s" />
               </div>

                 <div class="col-sm-4 col-md-4 col-lg-4 bg-info" style="padding: 0px; height: 310px;">
                   <p class="text-light text-center" style="background-color: black; height: 25px; line-height: 30px; font-size: 20px; margin: 0px;">
                       <asp:Label ID="lblTitle5" runat="server" Text=""></asp:Label>
                   </p>
                   <asp:ImageButton ID="ccdImage5" src="images/loading2.png" style="height: 285px; width: 100%;"
                       runat="server" AutoPostBack="True" ImageAlign="Bottom" ImageUrl="~/img/plus.png"
                       OnClientClick="Navigate(4)" OnClick="s" />
               </div>

                 <div class="col-sm-4 col-md-4 col-lg-4 bg-info" style="padding: 0px; height: 310px;">
                   <p class="text-light text-center" style="background-color: black; height: 25px; line-height: 30px; font-size: 20px; margin: 0px;">
                       <asp:Label ID="lblTitle6" runat="server" Text=""></asp:Label>
                   </p>
                   <asp:ImageButton ID="ccdImage6" src="images/loading2.png" style="height: 285px; width: 100%;"
                       runat="server" AutoPostBack="True" ImageAlign="Bottom" ImageUrl="~/img/plus.png"
                       OnClientClick="Navigate(4)" OnClick="s" />
               </div>
           </div>

                   <div class="row" >              
               <div class="col-sm-4 col-md-4 col-lg-4 bg-info" style="padding: 0px; height: 310px;">
                   <p class="text-light text-center" style="background-color: black; height: 25px; line-height: 30px; font-size: 20px; margin: 0px;">
                       <asp:Label ID="lblTitle7" runat="server" Text=""></asp:Label>
                   </p>
                   <asp:ImageButton ID="ccdImage7" src="images/loading2.png" style="height: 285px; width: 100%;"
                       runat="server" AutoPostBack="True" ImageAlign="Bottom" ImageUrl="~/img/plus.png"
                       OnClientClick="Navigate(4)" OnClick="s" />
               </div>

                 <div class="col-sm-4 col-md-4 col-lg-4 bg-info" style="padding: 0px; height: 310px;">
                   <p class="text-light text-center" style="background-color: black; height: 25px; line-height: 30px; font-size: 20px; margin: 0px;">
                       <asp:Label ID="lblTitle8" runat="server" Text=""></asp:Label>
                   </p>
                   <asp:ImageButton ID="ccdImage8" src="images/loading2.png" style="height: 285px; width: 100%;"
                       runat="server" AutoPostBack="True" ImageAlign="Bottom" ImageUrl="~/img/plus.png"
                       OnClientClick="Navigate(4)" OnClick="s" />
               </div>

                 <div class="col-sm-4 col-md-4 col-lg-4 bg-info" style="padding: 0px; height: 310px;">
                   <p class="text-light text-center" style="background-color: black; height: 25px; line-height: 30px; font-size: 20px; margin: 0px;">
                       <asp:Label ID="lblTitle9" runat="server" Text=""></asp:Label>
                   </p>
                   <asp:ImageButton ID="ccdImage9" src="images/loading2.png" style="height: 285px; width: 100%;"
                       runat="server" AutoPostBack="True" ImageAlign="Bottom" ImageUrl="~/img/plus.png"
                       OnClientClick="Navigate(4)" OnClick="s" />
               </div>
           </div>


       </div>
    </form>
</body>
</html>
