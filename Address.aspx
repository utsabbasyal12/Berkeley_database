<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="Berkeley_database.Address" %>

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
            <asp:Label ID="Label1" runat="server" Text="&lt;h1&gt;Address Table&lt;/h1&gt;"></asp:Label>
            <br />
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" Width="678px">
                <EditItemTemplate>
                    ADDRESS_ID:
                    <asp:Label ID="ADDRESS_IDLabel1" runat="server" Text='<%# Eval("ADDRESS_ID") %>' />
                    <br />
                    CITY:
                    <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*City cannot be blank" Font-Size="Small" ForeColor="Red" ControlToValidate="CITYTextBox"></asp:RequiredFieldValidator>
                    <br />
                    STREET:
                    <asp:TextBox ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="STREETTextBox" ErrorMessage="*Street cannot be blank" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-warning"/>
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"  CssClass="btn btn-danger"/>
                </EditItemTemplate>
                <InsertItemTemplate>
                    ADDRESS_ID:
                    <asp:TextBox ID="ADDRESS_IDTextBox" runat="server" Text='<%# Bind("ADDRESS_ID") %>' />
                    &nbsp;<br />CITY:
                    <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CITYTextBox" ErrorMessage="*City is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    STREET:
                    <asp:TextBox ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="STREETTextBox" ErrorMessage="*Street is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ADDRESS_ID:
                    <asp:Label ID="ADDRESS_IDLabel" runat="server" Text='<%# Eval("ADDRESS_ID") %>' />
                    <br />
                    CITY:
                    <asp:Label ID="CITYLabel" runat="server" Text='<%# Bind("CITY") %>' />
                    <br />
                    STREET:
                    <asp:Label ID="STREETLabel" runat="server" Text='<%# Bind("STREET") %>' />
                    <br />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" Class="btn btn-info" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-success" />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" Width="236px" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
                    <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                    <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;CITY&quot;, &quot;STREET&quot;) VALUES (:ADDRESS_ID, :CITY, :STREET)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;CITY&quot; = :CITY, &quot;STREET&quot; = :STREET WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
            <DeleteParameters>
                <asp:Parameter Name="ADDRESS_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ADDRESS_ID" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="STREET" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="STREET" Type="String" />
                <asp:Parameter Name="ADDRESS_ID" Type="String" />
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
