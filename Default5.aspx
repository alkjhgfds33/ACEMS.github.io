﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

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
        html { font-size: calc(1em + 10vw); }
    </style>

    <script type="text/javascript">        		
    </script>

</head>
<body>
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="tmrRefresh_Tick"></asp:Timer>         
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-sm-1 col-sm-12 col-md-12 col-lg-12 " 
                                    style="height:30px; line-height:30px; background-color:black; color:white; font-size:16px; text-align:center">
                                            測試</label></div>
                                <div class="col-sm-1 col-sm-12 col-md-12 col-lg-12 " 
                                    style="height:70px; line-height:70px; background-color:darkgray; color:blue; font-size:70px; text-align:left">
                                    <label id="lblDateTime" runat="server"></label>
                                </div>
                               
                                <div class="col-sm-1 col-sm-12 col-md-12 col-lg-12 " style="background-color:darkgray; color:red; height:30vh; line-height:300px;  text-align:left">
                                    <label id="lbl1" runat="server"></label>
                                </div>

                                <div class="col-sm-1 col-sm-12 col-md-12 col-lg-12 " style="background-color:darkgray; color:red; height:30vh; line-height:300px;  text-align:left">
                                    <label id="lbl2" runat="server"></label>
                                </div>

                                <div class="col-sm-1 col-sm-6 col-md-6 col-lg-6 " style="border-style:dotted dashed ridge double;border-color:#000000;background-color:darkgray; color:blue; height:30vh; line-height:300px;  text-align:left">
                                    <label id="lbl3" runat="server"></label></div>

                                <div class="col-sm-1 col-sm-6 col-md-6 col-lg-6 " style="border-style:dotted dashed ridge double;border-color:#000000;background-color:darkgray; color:blue; height:30vh; line-height:300px;  text-align:right">
                                    <label id="lbl4" runat="server"></label></div>
                            </div>
                        </div>    
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" />
                    </Triggers>
                </asp:UpdatePanel>
    </form>
</body>
</html>
