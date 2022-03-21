<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Assignment.aspx.cs" Inherits="Berkeley_database.Student_Assignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_NAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="STUDENT_NAME" DataValueField="STUDENT_NAME">
            </asp:DropDownList>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID,MODULE_CODE,ASSIGNMENT_ID,GRADE" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                <asp:BoundField DataField="STUDENT_EMAIL" HeaderText="STUDENT_EMAIL" SortExpression="STUDENT_EMAIL" />
                <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
                <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
                <asp:BoundField DataField="ASSIGNMENT_ID" HeaderText="ASSIGNMENT_ID" ReadOnly="True" SortExpression="ASSIGNMENT_ID" />
                <asp:BoundField DataField="ASSIGNMENT_TYPE" HeaderText="ASSIGNMENT_TYPE" SortExpression="ASSIGNMENT_TYPE" />
                <asp:BoundField DataField="GRADE" HeaderText="GRADE" ReadOnly="True" SortExpression="GRADE" />
                <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT S.Student_ID, S.Student_Name, S.Student_Email, M.Module_Code, M.Module_Name, M.Credit_Hours, A.Assignment_ID, A.Assignment_Type, G.Grade, G.Status
            FROM Result R
            JOIN Student S ON R.Student_ID = S.Student_ID
            JOIN Module M ON R.Module_Code = M.Module_Code
            JOIN Assignment A ON R.Assignment_ID = A.Assignment_ID
            JOIN Grade G ON R.Grade = G.Grade
            WHERE (S.Student_Name = :Student_Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Student_Name" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
