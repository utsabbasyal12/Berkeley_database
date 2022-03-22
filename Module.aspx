<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Module.aspx.cs" Inherits="Berkeley_database.Module" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Sidebar #8</title>
</head>
<body>
   <aside class="sidebar">
      <div class="toggle">
        <a href="#" class="burger js-menu-toggle" data-toggle="collapse" data-target="#main-navbar">
              <span></span>
            </a>
      </div>
      <div class="side-inner">

        <div class="profile">
          <img src="images/person_4.jpg" alt="Image" class="img-fluid">
          <h3 class="name">Berkeley</h3>
          <span class="country">College Database</span>
        </div>

        
        <div class="nav-menu">
            <ul>
                <li><a href="/Home.aspx"><span class="icon-home mr-3 active"></span>Home</a></li>
			<br />
                <li class="accordion">
                    <a href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsible">
                        <span class="icon-home mr-3"></span>Simple Form
                    </a>
                    <br />
                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne">
                        <div>
                            <ul>
                                <li><a href="/Student.aspx">Student</a></li>
                                <li><a href="/Department.aspx">Department</a></li>
                                <li><a href="/Teacher.aspx">Teacher</a></li>
                                <li><a href="/Address.aspx">Address</a></li>
                                <li><a href="/Module.aspx">Module</a></li><br />
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="accordion">
                    <a href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="collapsible">
                        <span class="icon-home mr-3"></span>Complex Form
                    </a>
                    <br />
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingOne">
                        <div>
                            <ul>
                                <li><a href="/Teacher_Module.aspx">Teacher-Module</a></li>
                                <li><a href="/Student_Fee.aspx">Student-Fee</a></li>
                                <li><a href="/Student_Assignment.aspx">Student-Assignment</a></li>
                            </ul>
                        </div>
                    </div>

                </li>
            </ul>
        </div>
      </div>
      
    </aside>
    <main>
      <div class="site-section">
        <div class="container">
          <div class="row justify-content-center">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"><h1>Module Table</h1></asp:Label>
            <br />
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1" Width="510px" CssClass="table">
                <EditItemTemplate>
                    MODULE_CODE:
                    <asp:Label ID="MODULE_CODELabel1" runat="server" Text='<%# Eval("MODULE_CODE") %>' />
                    <br />
                    MODULE_NAME:
                    <asp:TextBox ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="MODULE_NAMETextBox" ErrorMessage="*Name cannot be blank" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    CREDIT_HOURS:
                    <asp:TextBox ID="CREDIT_HOURSTextBox" runat="server" Text='<%# Bind("CREDIT_HOURS") %>' />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CREDIT_HOURSTextBox" ErrorMessage="*Credit Hours cannot be blank" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    DEPARTMENT_ID:
                    <asp:TextBox ID="DEPARTMENT_IDTextBox" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DEPARTMENT_IDTextBox" ErrorMessage="*Department ID cannot be blank" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    MODULE_CODE:
                    <asp:TextBox ID="MODULE_CODETextBox" runat="server" Text='<%# Bind("MODULE_CODE") %>' />
                    &nbsp;<br />MODULE_NAME:
                    <asp:TextBox ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="MODULE_NAMETextBox" ErrorMessage="* Name is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    CREDIT_HOURS:
                    <asp:TextBox ID="CREDIT_HOURSTextBox" runat="server" Text='<%# Bind("CREDIT_HOURS") %>' />
                    &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="CREDIT_HOURSTextBox" ErrorMessage="* Credit Hours is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    DEPARTMENT_ID:
                    <asp:TextBox ID="DEPARTMENT_IDTextBox" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="MODULE_NAMETextBox" ErrorMessage="* Department Id is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-info" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-dark" />
                </InsertItemTemplate>
                <ItemTemplate>
                    MODULE_CODE:
                    <asp:Label ID="MODULE_CODELabel" runat="server" Text='<%# Eval("MODULE_CODE") %>' />
                    <br />
                    MODULE_NAME:
                    <asp:Label ID="MODULE_NAMELabel" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
                    <br />
                    CREDIT_HOURS:
                    <asp:Label ID="CREDIT_HOURSLabel" runat="server" Text='<%# Bind("CREDIT_HOURS") %>' />
                    <br />
                    DEPARTMENT_ID:
                    <asp:Label ID="DEPARTMENT_IDLabel" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' />
                    <br />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-warning" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-success" />
                </ItemTemplate>
            </asp:FormView>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
                    <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                    <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
                    <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" SortExpression="DEPARTMENT_ID" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MODULE&quot; WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULE&quot; (&quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDIT_HOURS&quot;, &quot;DEPARTMENT_ID&quot;) VALUES (:MODULE_CODE, :MODULE_NAME, :CREDIT_HOURS, :DEPARTMENT_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;MODULE&quot;" UpdateCommand="UPDATE &quot;MODULE&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDIT_HOURS&quot; = :CREDIT_HOURS, &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE">
            <DeleteParameters>
                <asp:Parameter Name="MODULE_CODE" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MODULE_CODE" Type="String" />
                <asp:Parameter Name="MODULE_NAME" Type="String" />
                <asp:Parameter Name="CREDIT_HOURS" Type="String" />
                <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MODULE_NAME" Type="String" />
                <asp:Parameter Name="CREDIT_HOURS" Type="String" />
                <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
                <asp:Parameter Name="MODULE_CODE" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
               </div>
        </div>
      </div>  
    </main>
    
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
