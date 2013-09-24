<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true"
    CodeBehind="Exam.aspx.cs" Inherits="WebExam.Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .examContent
        {
            width: 750px;
            margin-left: 30px;
            padding: 10px 0 20px 0px;
        }
        
        .examContenttable
        {
            -webkit-box-shadow: 15px 15px 10px #b6b6b6;
            -moz-box-shadow: 15px 15px 10px #b6b6b6;
            box-shadow: 1px 2px 2px #b6b6b6;
        }
        
        .examHeader
        {
            height: 39px;
            padding-left: 30px;
            background-color: #e9e9e9;
            border-bottom: 1px solid #fff;
        }
        .examLeft
        {
            width: 100px;
            background-image: url('images/imgbook/top.jpg');
        }
        .questionBoxContent
        {
            /* width: 660px;*/
            margin-left: 30px;
            margin-right: 20px;
        }
        .questionBox
        {
            margin-top: 20px;
        }
        .questionBox h5
        {
            margin-bottom: -5px;
        }
        .questionBox1
        {
            margin-top: 20px;
        }
        .questionBox1 h5
        {
            margin-bottom: -5px;
        }
        .radio td
        {
            padding-top: 20px;
        }
        .radio td radio
        {
            margin-right: 10px;
        }
        .radio td label
        {
            margin-right: 50px;
        }
        hr
        {
            display: block;
            height: 1px;
            border: 0;
            border-top: 1px solid #ccc;
            margin: 2em 0;
            padding: 0;
        }
    </style>
    <script type="text/jscript">
        var dateTemp, strDate, strDateNextDay
        Datetemp = '<%=strdate%>'
        strDate = '<%=strLongDate%>'
        strDateNextDay = '<%=strLongDateNextDay%>'
    </script>
    <script src="js/DateTime.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="examContent">
        <table cellpadding="0" cellspacing="0" border="0" class="examContenttable">
            <tr>
                <td class="examLeft">
                </td>
                <td class="examHeader">
                    <div style="float: left">
                        <asp:Label ID="Label1" runat="server" Text="Exam Set 1" Font-Bold="True" Font-Size="Larger"
                            ForeColor="#333333"></asp:Label></div>
                    <div style="float: right; margin-right: 20px;">
                        <span id="clock"></span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="examLeft" style="background-image: url('images/imgbook/mid.jpg')">
                </td>
                <td style="background-color: #e9e9e9;">
                    <div class="questionBoxContent">
                        <div class="questionBox1">
                            <h5>
                                1.) What does SQL stand for?</h5>
                            <asp:RadioButtonList CssClass="radio" ID="RadioButtonList1" RepeatColumns="2" runat="server">
                                <asp:ListItem>Structured Query Language</asp:ListItem>
                                <asp:ListItem>Structured Question Language</asp:ListItem>
                                <asp:ListItem>Strong Question Language</asp:ListItem>
                                <asp:ListItem>Strong Question List</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <hr />
                        <div class="questionBox">
                            <h5>
                                2.) Which SQL statement is used to extract data from a database?</h5>
                            <asp:RadioButtonList CssClass="radio" ID="RadioButtonList2" RepeatColumns="2" runat="server">
                                <asp:ListItem>GET</asp:ListItem>
                                <asp:ListItem>EXTRACT</asp:ListItem>
                                <asp:ListItem>OPEN</asp:ListItem>
                                <asp:ListItem>SELECT</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <hr />
                        <div class="questionBox">
                            <h5>
                                3.) Which SQL statement is used to update data in a database?</h5>
                            <asp:RadioButtonList CssClass="radio" ID="RadioButtonList3" RepeatColumns="2" runat="server">
                                <asp:ListItem>MODIFY</asp:ListItem>
                                <asp:ListItem>UPDATE</asp:ListItem>
                                <asp:ListItem>SAVE</asp:ListItem>
                                <asp:ListItem>SAVE AS</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <hr />
                        <div class="questionBox">
                            <h5>
                                4.) Which SQL statement is used to delete data from a database?</h5>
                            <asp:RadioButtonList CssClass="radio" ID="RadioButtonList4" RepeatColumns="2" runat="server">
                                <asp:ListItem>DELETE</asp:ListItem>
                                <asp:ListItem>COLLAPSE</asp:ListItem>
                                <asp:ListItem>REMOVE</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <hr />
                        <div class="questionBox">
                            <h5>
                                5.) Which SQL statement is used to insert new data in a database?</h5>
                            <asp:RadioButtonList CssClass="radio" ID="RadioButtonList5" RepeatColumns="2" runat="server">
                                <asp:ListItem>INSERT INTO</asp:ListItem>
                                <asp:ListItem>ADD NEW</asp:ListItem>
                                <asp:ListItem>INSERT NEW</asp:ListItem>
                                <asp:ListItem>ADD RECORD</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <hr />
                        <div class="questionBox">
                            <h5>
                                6.) With SQL, how do you select a column named "FirstName" from a table named "Persons"?</h5>
                            <asp:RadioButtonList CssClass="radio" ID="RadioButtonList6" RepeatColumns="2" runat="server">
                                <asp:ListItem>EXTRACT FirstName FROM Persons</asp:ListItem>
                                <asp:ListItem>SELECT Persons.FirstName</asp:ListItem>
                                <asp:ListItem>INSERT NEW</asp:ListItem>
                                <asp:ListItem>SELECT FirstName FROM Persons</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <br />
                    <div class="examSubmit" style="margin: 30px auto 20px auto; border-top: 1px solid #fff;
                        padding-top: 20px;" align="center">
                        <asp:Button ID="btnSubmit" CssClass="btn btn-info btn-large" Width="200px" runat="server"
                            Text="Submit" /></div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
