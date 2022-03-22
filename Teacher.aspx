<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="Berkeley_database.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

    <title>HomePage</title>
    <link="Content/bootstap.min.css" rel="stylesheet" type="text/css" />
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
            <asp:Label ID="Label1" runat="server" Text="Label"><h1>Teacher Table</h1></asp:Label>
            <br />
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1" Class="table">
                <EditItemTemplate>
                    TEACHER_ID:
                    <asp:Label ID="TEACHER_IDLabel1" runat="server" Text='<%# Eval("TEACHER_ID") %>' />
                    <br />
                    TEACHER_NAME:
                    <asp:TextBox ID="TEACHER_NAMETextBox" runat="server" Text='<%# Bind("TEACHER_NAME") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Teacher Name cannot be blank" ControlToValidate="TEACHER_NAMETextBox" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                    <br />
                    TEACHER_EMAIL:
                    <asp:TextBox ID="TEACHER_EMAILTextBox" runat="server" Text='<%# Bind("TEACHER_EMAIL") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TEACHER_EMAILTextBox" ErrorMessage="*Email cannot be blank" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-warning" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" />
                </EditItemTemplate>

                <InsertItemTemplate>
                    TEACHER_ID:
                    <asp:TextBox ID="TEACHER_IDTextBox" runat="server" Text='<%# Bind("TEACHER_ID") %>' />
                    <br />
                    TEACHER_NAME:
                    <asp:TextBox ID="TEACHER_NAMETextBox" runat="server" Text='<%# Bind("TEACHER_NAME") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TEACHER_NAMETextBox" ErrorMessage="Teacher Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    TEACHER_EMAIL:
                    <asp:TextBox ID="TEACHER_EMAILTextBox" runat="server" Text='<%# Bind("TEACHER_EMAIL") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TEACHER_EMAILTextBox" ErrorMessage="Teacher Email Must Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-secondary" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" />
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
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-info"/>
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-danger"/>
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-primary"  />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1" CssClass="table">
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
