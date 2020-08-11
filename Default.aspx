<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebKakeibo01._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Web Kakeibo</h1>
        <p class="lead">yusuke morioka のポートフォリオです</p>
        <p><a class="btn btn-primary btn-lg">GitHub &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>登録/Register</h2>
            <p>
                <a class="btn btn-default">Go &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>編集・削除/Edit</h2>
            <p>
                <a class="btn btn-default">Go &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>現在状況/Now</h2>
            <p>
                <a class="btn btn-default" >Go &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
