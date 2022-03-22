<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Fee.aspx.cs" Inherits="Berkeley_database.Student_Fee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_NAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="STUDENT_NAME" DataValueField="STUDENT_NAME" CssClass="table">
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID,PAYMENT_ID" DataSourceID="SqlDataSource1" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                    <asp:BoundField DataField="STUDENT_EMAIL" HeaderText="STUDENT_EMAIL" SortExpression="STUDENT_EMAIL" />
                    <asp:BoundField DataField="PAYMENT_ID" HeaderText="PAYMENT_ID" ReadOnly="True" SortExpression="PAYMENT_ID" />
                    <asp:BoundField DataField="PAYMENT_STATUS" HeaderText="PAYMENT_STATUS" SortExpression="PAYMENT_STATUS" />
                    <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAYMENT_DATE" SortExpression="PAYMENT_DATE" />
                    <asp:BoundField DataField="PAYMENT_AMOUNT" HeaderText="PAYMENT_AMOUNT" SortExpression="PAYMENT_AMOUNT" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT S.Student_ID, S.Student_Name, S.Student_Email, P.Payment_ID, P.Payment_Status, P.Payment_Date, P.Payment_Amount
            From Student_Payment P
            JOIN Student S ON P.Student_ID = S.Student_ID
WHERE (S.Student_Name = :Student_Name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Student_Name" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
