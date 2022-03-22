<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher_Module.aspx.cs" Inherits="Berkeley_database.Teacher_Module" %>

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

    <title>Teacher_Module</title>
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
            <asp:Label ID="Label1" runat="server" Text="Label"><h1>Teacher-Module Table</h1></asp:Label>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;TEACHER_NAME&quot; FROM &quot;TEACHER&quot; "></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TEACHER_NAME" DataValueField="TEACHER_NAME" CssClass="table">
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_EMAIL" DataSourceID="SqlDataSource1" CssClass="table">
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
