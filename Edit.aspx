<%@ Page Title="Edit" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebKakeibo01._Edit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>編集/Edit</h1>
        <p class="lead">編集・削除を行います。</p>
    </div>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="164px" Width="973px" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" DataFormatString="{0:yyyy/MM/dd}" />
            <asp:BoundField DataField="Shop" HeaderText="Shop" SortExpression="Shop" />
            <asp:BoundField DataField="Thing" HeaderText="Thing" SortExpression="Thing" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &emsp; &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="編集" />
                    &emsp; &ensp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('本当に削除しますか？');" Text="削除" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Employees] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Employees] ([Id], [Days], [Shop], [Thing], [Price]) VALUES (@Id, @Days, @Shop, @Thing, @Price)" SelectCommand="SELECT * FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [Days] = @Days, [Shop] = @Shop, [Thing] = @Thing, [Price] = @Price WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Days" />
            <asp:Parameter Name="Shop" Type="String" />
            <asp:Parameter Name="Thing" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="Days" />
            <asp:Parameter Name="Shop" Type="String" />
            <asp:Parameter Name="Thing" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    </asp:Content>
