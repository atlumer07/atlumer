<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.ascx.cs" Inherits="WebExam.menu.MainMenu" %>
<ul class="nav">
    <li><a href="#">Home</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Contact</a></li>
    <li><a href="#">Ranking</a></li>
    <li><a href="#">Profile</a></li>
    <li class="active"><a href="#"><i class="icon-pencil icon-white"></i>Take Exam</a></li>
</ul>
<ul class="nav pull-right">
    <li><a href="#">Rachelle Ann Daquis</a></li>
    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">My Account
        <b class="caret"></b></a>
        <ul class="dropdown-menu">
            <li><a href="#">Account Settings</a></li>
            <li><a href="#">View Profile</a></li>
            <li><a href="Default.aspx">Logout</a></li>
        </ul>
    </li>
</ul>
<div class="pull-right" style="margin-top: 5px;">
    <asp:Image ID="Image1" runat="server" Height="28px" Width="30px" ImageUrl="~/images/Rachel Anne Daquis.jpg" />
</div>
