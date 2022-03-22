<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Berkeley_database.Student" %>

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
              <li><a href="#"><span class="icon-home mr-3 active"></span>Home</a></li>
            <li class="accordion">
              <a href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsible">
                <span class="icon-home mr-3"></span>Simple Form
              </a>
              <div id="collapseOne" class="collapse" aria-labelledby="headingOne">
                <div>
                  <ul>
                    <li><a href="/Student.aspx">Student</a></li>
                    <li><a href="/Department.aspx">Department</a></li>
                    <li><a href="/Teacher.aspx">Teacher</a></li>
                    <li><a href="/Address.aspx">Address</a></li>
                    <li><a href="/Module.aspx">Module</a></li>
                  </ul>
                </div>
              </div>
            </li>
            <li class="accordion">
              <a href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="collapsible">
                <span class="icon-home mr-3"></span>Complex Form
              </a>

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
            <li><a href="#"><span class="icon-sign-out mr-3"></span>Sign out</a></li>
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
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" Width="365px">
                <EditItemTemplate>
                    STUDENT_ID:
                    <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                    <br />
                    STUDENT_NAME:
                    <asp:TextBox ID="STUDENT_NAMETextBox" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                    <br />
                    STUDENT_EMAIL:
                    <asp:TextBox ID="STUDENT_EMAILTextBox" runat="server" Text='<%# Bind("STUDENT_EMAIL") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary"  />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-warning" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    STUDENT_ID:
                    <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                    <br />
                    STUDENT_NAME:
                    <asp:TextBox ID="STUDENT_NAMETextBox0" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                    <br />
                    STUDENT_EMAIL:
                    <asp:TextBox ID="STUDENT_EMAILTextBox0" runat="server" Text='<%# Bind("STUDENT_EMAIL") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-warning"  />
                </InsertItemTemplate>
                <ItemTemplate>
                    STUDENT_ID:
                    <asp:Label ID="STUDENT_IDLabel" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                    <br />
                    STUDENT_NAME:
                    <asp:Label ID="STUDENT_NAMELabel" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                    <br />
                    STUDENT_EMAIL:
                    <asp:Label ID="STUDENT_EMAILLabel" runat="server" Text='<%# Bind("STUDENT_EMAIL") %>' />
                    <br />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-primary" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-danger"/>
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-success" />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" Height="183px" Width="672px" CssClass="table">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                    <asp:BoundField DataField="STUDENT_EMAIL" HeaderText="STUDENT_EMAIL" SortExpression="STUDENT_EMAIL" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;STUDENT_EMAIL&quot;) VALUES (:STUDENT_ID, :STUDENT_NAME, :STUDENT_EMAIL)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;STUDENT_EMAIL&quot; = :STUDENT_EMAIL WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="STUDENT_NAME" Type="String" />
                    <asp:Parameter Name="STUDENT_EMAIL" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="STUDENT_NAME" Type="String" />
                    <asp:Parameter Name="STUDENT_EMAIL" Type="String" />
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
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