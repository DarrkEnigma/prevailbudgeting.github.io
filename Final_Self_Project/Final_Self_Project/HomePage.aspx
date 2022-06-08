<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Final_Self_Project.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head>
    <meta charset="utf-8"/>
    <title>Prevail Budgeting</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="keywords"/>
    <meta content="" name="description"/>

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon"/>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet"/>

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet"/>

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"/>
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="/style.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.js" crossorigin="anonymous"></script>

    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        .left-container {
            height: 100vh;
            background-image: linear-gradient(#0094ff, #0094ff);
            background-position: center;
            background-size: cover;
            position: relative;
        }

        .right-contianer {
            height: 100vh;
            width: 100%;
            position: relative;
        }

        .header {
            font-weight: 22px;
            font-size: 36px;
        }

        .sub-text {
            font-size: 22px;
            font-weight: 400;
        }

        .month-container {
            padding-top: 25%;
            padding-left: 5%;
            padding-right: 5%;
        }

        .calc-contianer {
            padding-top: 12%;
            padding-left: 5%;
            padding-right: 5%;
        }

        .fs-white {
            color: white;
        }

        .fs-dark-grey {
            color: darkgrey;
        }

        .budget-container {
            display: inline-block;
            background: white;
            border-radius: 8px;
            box-shadow: 0 6px 4px #0000000;
        }

        .month-amount {
            font-size: 36px;
            font-weight: 700;
        }

        .bottom-border {
            border-bottom: 1px solid #0094ff;
        }

        .expense-row {
            padding: 10px;
        }

       .income{
           color:green;
       }

       .expense{
           color:red;
       }

       .bg-dark1{
           background-color:#0094ff;
           margin:0 2px;
           border-radius: 3px;
           color:white;
       }

       .bg-dark2{
           background-color:#0094ff;
           margin:0 2px;
           border-radius:3px;
           color:white;
       }

       .addtransactionbtn{
           width:50%;
           color:white;
           background-color:#0094ff;
           font-size:12px;
           margin-top: 30px;
           outline:none;
           padding:8px 0;
           border-radius:1rem;
           font-size:16px;
       }
    </style>
</head>

<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <a href="index.html" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>PREVAIL</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    
                </div>
               
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                </a>
               
                
                <div class="navbar-nav align-items-center ms-auto">
                    
                    <div class="nav-item dropdown">
                        
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Profile updated</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">New user added</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Password changed</h6>
                                <small>15 minutes ago</small>
                            </a>
                           
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                            <asp:Label ID="userlbl" runat="server"></asp:Label>

                        
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                           
                            <a href="LoginPage.aspx" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->


            <!-- Sale & Revenue Start -->
            <div class="row">
                <div class="col-4 left-container">
                    <div class="month-container">
                        <div class="header fs-white">Your Budget</div>
                        <div id="current-month" class="sub-text fs-white"></div>
                        <div class="budget-container p-2 mt-4">
                            
                                <h4>Balance</h4>
                                <p id="balance">R0.00</p>
                            
                        </div>
                    </div>

                    <div class="chart-container">
                        <canvas id="expense-chart"></canvas>
                    </div>

                </div>

                <div class="col-8 right-contianer">
                    <div class="calc-contianer">
                        <div class="header fs-dark-grey">Track Your Budget</div>
                         

                        <div class="mt-3 tracking-text text-capitalize sub-text bottom-border">Tracking Budget</div>
                        <div class="row mt-4">
                            <div class="col-7">
                                <form id="form" runat="server">
                                    <div class="form-control">
                                        <label for="text">Description</label>&nbsp;
                                        <asp:TextBox ID="description" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-control">
                                        <label for="amount">Amount(+/-) <br /> </label>&nbsp;<asp:TextBox ID="amount"  runat="server"></asp:TextBox>
                                    </div>
                                    <br />
                                    <asp:Button ID="Button1" runat="server" Height="42px" Text="Add Transaction" Width="194px" BackColor="#3399FF" BorderColor="#3399FF" ForeColor="White" OnClick="Button1_Click" />
                                    <asp:Label ID="errorlbl" runat="server"></asp:Label>
                                    <asp:HiddenField ID="PurchaseID" runat="server" />
                                </form>
                            </div>

                            <div class="col-4">
                                <div class="income-expense">
                                    <div class="bg-dark1">
                                        <h4>Inflow</h4>
                                        <p class="income" id="income">R0.00</p>
                                    </div>
                                    <div class="bg-dark2">
                                        <h4>Outflow</h4>
                                        <p class="expense" id="expense">R 0.00</p>
                                    </div>
                                   
                                </div>
                            </div>

                            <div class="col-1">

                            </div>
                           
                        </div>

                        <div class="expense-list mt-4">
                            <h3>Transactions</h3>
                            <ul id="list" class="list"></ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sale & Revenue End -->


            <!-- Sales Chart Start -->
           

                
                <!-- Sales Chart End -->
                <!-- Recent Sales Start -->
                <!-- Recent Sales End -->
                <!-- Widgets Start -->
                <!-- Widgets End -->
                <!-- Footer Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-light rounded-top p-4">
                        <div class="row">
                            <div class="col-12 col-sm-6 text-center text-sm-start">
                                &copy; <a href="#">Your Site Name</a>, All Right Reserved.
                            </div>
                            <div class="col-12 col-sm-6 text-center text-sm-end">
                                <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                                Designed By <a href="https://htmlcodex.com">HTML Codex</a>
                                </br>
                                Distributed By <a class="border-bottom" href="https://themewagon.com" target="_blank">ThemeWagon</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer End -->
            </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script src="main2.js"></script>
</body>

</html>

