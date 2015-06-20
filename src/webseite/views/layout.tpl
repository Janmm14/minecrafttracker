<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>MineTracker</title>
    <meta name="description" content="Keep track of Minecraft Servers">
    <meta name="author" content="geNAZt">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{ "plugins/bootstrap/bootstrap.css" | asset }}" rel="stylesheet">
    <link href="{{ "plugins/jquery-ui/jquery-ui.min.css" | asset }}" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
    <link href="{{ "css/style.css" | asset }}" rel="stylesheet">
    {{ template "css" . }}
</head>
<body>
<!--Start Header-->
<header class="navbar">
    <div class="container-fluid expanded-panel">
        <div class="row">
            <div id="logo" class="col-xs-1 col-sm-1">
                <a href="/">MineTracker</a>
            </div>

            <ul class="nav navbar-nav pull-left panel-menu col-xs-2 col-sm-2">
                <li class="view-selector">
                    <span id="views"></span>
                </li>
            </ul>

            <ul class="nav navbar-nav pull-right panel-menu col-xs-9 col-sm-9">
                <li id="logoimg">
                    <a href="/"></a>
                </li>
                <li class="dropdown" style="float:right;">
                    <!-- <a href="#" class="dropdown-toggle account" data-toggle="dropdown">
                        <div class="avatar">
                            <img src="https://avatars3.githubusercontent.com/u/3252854?v=3&s=460" class="img-circle"
                                 alt="avatar">
                        </div>
                        <i class="fa fa-angle-down pull-right"></i>

                        <div class="user-mini pull-right">
                            <span class="welcome">Welcome,</span>
                            <span>Fabian Faßbender</span>
                        </div>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="/profile/alerts/">
                                <i class="fa fa-bell"></i>
                                <span>Alerts</span>
                            </a>
                        </li>
                        <li>
                            <a href="/profile/views/" class="ajax-link">
                                <i class="fa fa-picture-o"></i>
                                <span>Views</span>
                            </a>
                        </li>
                        <li>
                            <a href="/profile/settings/">
                                <i class="fa fa-cog"></i>
                                <span>Settings</span>
                            </a>
                        </li>
                        <li>
                            <a href="/logout/">
                                <i class="fa fa-power-off"></i>
                                <span>Logout</span>
                            </a>
                        </li>
                    </ul> -->
                    <span class="btn btn-success btn-login"><a href="#">Login</a></span>
                    <span class="btn btn-danger btn-login"><a href="#">Register</a></span>
                </li>
            </ul>
        </div>
    </div>
</header>
<!--End Header-->
<!--Start Container-->
<div id="main" class="container-fluid">
    <div class="row">
        <!--Start Content-->
        <div id="content" class="col-xs-12 col-sm-12">
            {{ template "content" . }}
        </div>
        <!--End Content-->
    </div>
</div>
<!--End Container-->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
<![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--<script src="http://code.jquery.com/jquery.js"></script>-->
<script src="{{ "plugins/jquery/jquery-2.1.0.min.js" | asset }}"></script>
<script src="{{ "plugins/jquery-ui/jquery-ui.min.js" | asset }}"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="{{ "plugins/bootstrap/bootstrap.min.js" | asset }}"></script>
{{ template "js" . }}
</body>
</html>