﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test Web Api</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous" />
    <link href="css/Style.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Web API Test</a>
            </div>
            <%--<div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>            
          </ul>
        </div>--%><!--/.nav-collapse -->
        </div>
    </nav>

    <div class="container">

        <div>

            <div class="page-header">
                <h1>Credit Card Information <small>enter credit card info</small></h1>
            </div>
            <form id="frmCard" class="needs-validation" novalidate>
                <div class="row">
                    <div class="col-sm-12 col-md-2 col-lg-2">
                        <h4>Card Number:</h4>
                    </div>
                    <div class="col-sm-12 col-md-2 col-lg-1">                 
                        <div class="form-group">
                            <input type="text" class="form-control" id="cardnumber1" value="" maxlength="4" required />
                            <div class="invalid-feedback">
                              Please enter number.
                            </div>
                        </div>                                               
                    </div>
                    <div class="col-sm-12 col-md-2 col-lg-1">
                        <div class="form-group">
                            <input type="text" class="form-control" id="cardnumber2" value="" maxlength="4" />
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-2 col-lg-1">
                        <div class="form-group">
                            <input type="text" class="form-control" id="cardnumber3" value="" maxlength="4" />
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-2 col-lg-1">
                        <div class="form-group">
                            <input type="text" class="form-control" id="cardnumber4" value="" maxlength="4" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-2 col-lg-2">
                        <h4>Expiry Date:</h4>
                    </div>
                    <div class="col col-sm-12 col-md-2 col-lg-1">
                        <div class="form-group">
                        <select id="expmonth" class="form-control">
                            <option value="">mm</option>
                            <option value="1">01</option>
                            <option value="2">02</option>
                            <option value="3">03</option>
                            <option value="4">04</option>
                            <option value="5">05</option>
                            <option value="6">06</option>
                            <option value="7">07</option>
                            <option value="8">08</option>
                            <option value="9">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        </div>
                    </div>
                    <div class="col col-sm-12 col-md-2 col-lg-2">
                        <div class="form-group">
                        <select id="expyear" class="form-control">
                            <option value="">YYYY</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>                            
                        </select>
                        </div>
                    </div>
                </div>
                <div class="row">                    
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <button type="button" class="btn btn-primary" onclick="getProducts();">Submit</button>
                         <button type="button" class="btn btn-danger">Cancel</button>
                    </div>
                </div>
            </form>
        </div>

    </div>
    <!-- /.container -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    
</body>
</html>