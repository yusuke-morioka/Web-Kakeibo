<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebKakeibo01._Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>登録/Register</h1>
        <p class="lead">お買い物の登録を行います。</p>
    </div>

    い つ&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
    <br/>
    <br/>
    どこで&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" placeholder="任意" ></asp:TextBox>
   <br/>
    <br/>
    なにを&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" placeholder="任意" ></asp:TextBox>
    <br/>
    <br/>
    いくら&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" placeholder="半角数字"></asp:TextBox>
    <br/>
    <br/>
    <br/>
    <asp:Button ID="Button1" runat="server" Text="登録実行" Height="43px" OnClick="Button1_Click" Width="127px"/>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br/>


</asp:Content>
