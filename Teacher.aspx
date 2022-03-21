<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="Berkeley_database.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    TEACHER_ID:
                    <asp:Label ID="TEACHER_IDLabel1" runat="server" Text='<%# Eval("TEACHER_ID") %>' />
                    <br />
                    TEACHER_NAME:
                    <asp:TextBox ID="TEACHER_NAMETextBox" runat="server" Text='<%# Bind("TEACHER_NAME") %>' />
                    <br />
                    TEACHER_EMAIL:
                    <asp:TextBox ID="TEACHER_EMAILTextBox" runat="server" Text='<%# Bind("TEACHER_EMAIL") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    TEACHER_ID:
                    <asp:TextBox ID="TEACHER_IDTextBox" runat="server" Text='<%# Bind("TEACHER_ID") %>' />
                    <br />
                    TEACHER_NAME:
                    <asp:TextBox ID="TEACHER_NAMETextBox" runat="server" Text='<%# Bind("TEACHER_NAME") %>' />
                    <br />
                    TEACHER_EMAIL:
                    <asp:TextBox ID="TEACHER_EMAILTextBox" runat="server" Text='<%# Bind("TEACHER_EMAIL") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    TEACHER_ID:
                    <asp:Label ID="TEACHER_IDLabel" runat="server" Text='<%# Eval("TEACHER_ID") %>' />
                    <br />
                    TEACHER_NAME:
                    <asp:Label ID="TEACHER_NAMELabel" runat="server" Text='<%# Bind("TEACHER_NAME") %>' />
                    <br />
                    TEACHER_EMAIL:
                    <asp:Label ID="TEACHER_EMAILLabel" runat="server" Text='<%# Bind("TEACHER_EMAIL") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"/>
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-primary"  />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                    <asp:BoundField DataField="TEACHER_NAME" HeaderText="TEACHER_NAME" SortExpression="TEACHER_NAME" />
                    <asp:BoundField DataField="TEACHER_EMAIL" HeaderText="TEACHER_EMAIL" SortExpression="TEACHER_EMAIL" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TEACHER&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TEACHER&quot; (&quot;TEACHER_ID&quot;, &quot;TEACHER_NAME&quot;, &quot;TEACHER_EMAIL&quot;) VALUES (:TEACHER_ID, :TEACHER_NAME, :TEACHER_EMAIL)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHER&quot;" UpdateCommand="UPDATE &quot;TEACHER&quot; SET &quot;TEACHER_NAME&quot; = :TEACHER_NAME, &quot;TEACHER_EMAIL&quot; = :TEACHER_EMAIL WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID">
            <DeleteParameters>
                <asp:Parameter Name="TEACHER_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TEACHER_ID" Type="String" />
                <asp:Parameter Name="TEACHER_NAME" Type="String" />
                <asp:Parameter Name="TEACHER_EMAIL" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TEACHER_NAME" Type="String" />
                <asp:Parameter Name="TEACHER_EMAIL" Type="String" />
                <asp:Parameter Name="TEACHER_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
