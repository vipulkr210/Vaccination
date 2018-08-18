</title><link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/metisMenu.min.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
    <script src="js/metisMenu.min.js"></script>
    <script src="js/sb-admin-2.js"></script>
<link rel="stylesheet" href="style.css" type="text/css" media="print" />
    <script src="js/validations.js"></script>
  	<link href="css/bootstrap-material-design.css" rel="stylesheet" />
	<link href="css/ripples.min.css" rel="stylesheet" />
	<link href="css/sb-admin-2.css" rel="stylesheet" />

<div class="aaa">    <nav class="navbar navbar-aktu navbar-static-top" role="navigation" style="margin-bottom: 0;">
                <div class="navbar-header" style="height: 50px; margin-top: -10px;background:;">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand nav-name-user" href="#" style="padding: 19px 15px; letter-spacing: 4px; font-weight: 200;">
				<img src="logo.jpg" style="height: 25px; width: 25px; display: inline-block;" />

                        <span style="margin-left: 10px;"><%=application.getInitParameter("collegename") %> <span style="font-weight: 600;">ERP</span></span></a>
                </div>
   <!-- /.navbar-header -->
<%if(session.getAttribute("mac")!=null){ %>
                <ul class="nav navbar-top-links navbar-right">
                    
  <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle nav-name-user" style="color: #fff;" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>
                            <span id="lbluser"><%=session.getAttribute("mac") %></span>
                            <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#" id="hlpkUserProfile"><i class="fa fa-user fa-fw"></i>Profile</a>
                            </li>
                            <li><a href="Admin_PasswordChange.jsp" id="hlpkChangePassword"><i class="fa fa-gear fa-fw"></i>Change Password</a>
                            </li>
                            <li class="divider"></li>
                            <li>                                
                                <a id="hlpkLogout" href="index.jsp"> <i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <%}else{ %>
               <ul class="nav navbar-top-links navbar-right"><li> <a href="index.jsp">BACK</a></li></ul>
                
                <%} %>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
           <jsp:include page="left_side.jsp"></jsp:include>   
                               <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>
</div>