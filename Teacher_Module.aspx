<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher_Module.aspx.cs" Inherits="Berkeley_database.Teacher_Module" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;TEACHER_NAME&quot; FROM &quot;TEACHER&quot; "></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TEACHER_NAME" DataValueField="TEACHER_NAME">
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_EMAIL" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" SortExpression="TEACHER_ID" />
                    <asp:BoundField DataField="TEACHER_NAME" HeaderText="TEACHER_NAME" SortExpression="TEACHER_NAME" />
                    <asp:BoundField DataField="TEACHER_EMAIL" HeaderText="TEACHER_EMAIL" ReadOnly="True" SortExpression="TEACHER_EMAIL" />
                    <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" SortExpression="MODULE_CODE" />
                    <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                    <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT TM.Teacher_Id, T.Teacher_Name, T.Teacher_Email, TM.Module_Code, M.Module_Name, M.Credit_Hours
            From Teacher_Module TM
            JOIN Teacher T ON TM.Teacher_ID = T.Teacher_ID
            JOIN Module M ON TM.Module_Code = M.Module_Code
WHERE (T.Teacher_Name = :Teacher_Name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Teacher_Name" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
