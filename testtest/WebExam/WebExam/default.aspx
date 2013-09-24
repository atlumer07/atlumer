<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true"
    CodeBehind="default.aspx.cs" Inherits="WebExam._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loginBox">
        <div class="loginBoxLeft">
            <table style="width: 100%">
                <tr>
                    <td colspan="2">
                        <div class="alert alert-success" id="ErrMSG" runat="server">
                            <b>Login :</b>
                            <asp:Label ID="txtMSG" runat="server" Text="Please provide your Username and Password."></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td width="40%">
                        <asp:Label ID="lblUser" Text="Username" Font-Bold="true" runat="server" Font-Size="Larger"></asp:Label>
                    </td>
                    <td width="60%">
                        <asp:TextBox ID="txtUser" Width="200" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPass" Text="Password" Font-Bold="true" runat="server" Font-Size="Larger"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPass" TextMode="Password" Width="200" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:CheckBox ID="chkRemember" CssClass="checkbox" Font-Size="8px" runat="server" />
                        <asp:Label ID="lblRemember" Text="Remember me on this computer" runat="server" ForeColor="#636363"
                            Font-Size="Small"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td style="padding-top: 20px;">
                        <asp:Button ID="btnLogin" CssClass="btn btn-info btn-large" Width="210" Text="Sign in"
                            runat="server" OnClick="btnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-top: 30px;">
                        <span style="font-size: 16px; font-weight: bold">Help: </span><a href="#">forgot your
                            password? Please click this link.</a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="loginBoxRight">
            <h2>
                Login</h2>
            <p>
                In computer security, a login or logon refers to the credentials required to obtain
                access to a computer system or other restricted area. Logging in or on and signing
                in or on is the process by which individual access to a computer system is controlled
                by identifying and authenticating the user through the credentials presented by
                the user.</p>
            <p>
                Once a user has logged in, they can then log out or log off when access is no longer
                needed. To log out is to close off one's access to a computer system after having
                previously logged in.
            </p>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
