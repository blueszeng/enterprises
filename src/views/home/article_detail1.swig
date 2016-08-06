<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>Page title</title>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/article.css">

</head>
<body>
<header>
    <img src="/images/top_bg.jpg">
    <div class="container">
        <div class="row">
            <div>
                <span id="logo" class="pull-left"> <img src="/images/logo.png"> </span>
                <span class="pull-right"> <img src="/images/font.png"> </span>
            </div>
        </div>
    </div>
</header>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container">
        <ul class="nav navbar-nav pull-right">
            <li><a href="index.html">首页</a></li>
            <li><a href="#">调理产品</a></li>
            <li class="active"><a href="#">体质分类</a></li>
            <li><a href="#">体质测试</a></li>
            <li><a href="#">养生必读</a></li>
            <li><a href="#">联系我们</a></li>
        </ul>
    </div>
</nav>
<div id="main">
    <div class="container">
        <div class="row">
            <!-- Sidebar ================================================== -->
            <div id="sidebar" class="hidden-xs hidden-sm col-md-3">
                <ul id="sideManu" class="nav nav-tabs nav-stacked">
                    <li class="subMenu"><a class="sidebar-left-title"> 养生必读</a>
                        <ul>
                            <li><a class="active" href="products.html">中医体质
                            </a></li>
                            <li><a href="products.html">中医养生
                            </a></li>
                            <li><a href="products.html">亚健康
                            </a></li>
                            <li><a href="products.html">特殊人群的养生调理</a></li>
                            <li><a href="products.html">保健养生知识荟萃</a></li>
                            <li><a href="products.html">养生案例</a></li>
                            <li><a href="products.html">养生方法</a></li>
                        </ul>
                    </li>
                </ul>
                <br/>

                <div class="thumbnail">
                    <img src="images/product/products/panasonic.jpg" alt="Bootshop panasonoc New camera"/>

                    <div class="caption">
                        <h5>Panasonic</h5>
                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i
                                class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i
                                class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
                    </div>
                </div>
                <br/>

                <div class="thumbnail">
                    <img src="images/product/products/kindle.png" title="Bootshop New Kindel" alt="Bootshop Kindel">

                    <div class="caption">
                        <h5>Kindle</h5>
                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i
                                class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i
                                class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
                    </div>
                </div>
                <br/>

                <div class="thumbnail">
                    <img src="images/product/payment_methods.png" title="Bootshop Payment Methods"
                         alt="Payments Methods">

                    <div class="caption">
                        <h5>Payment Methods</h5>
                    </div>
                </div>
            </div>
            <!-- Sidebar end=============================================== -->
            <article class="col-xs-12 col-sm-12 col-md-9">
                <div class="inside-bg">
                    <div class="position"><a class="p-home" title="首页" href="/"></a> <a href="/">首页 ></a> <a href="">养生必读</a></div>
                    <div class="new_content clearfix">

                        <div class="new_article clearfix">
                            <div class="new_article_t"> {{article.title}}
                                <p class="news_p">时间:&nbsp;{{article.createTime | date('Y-m-d H:i:s', -480, 'CCT')}}&nbsp;&nbsp;/&nbsp;&nbsp;作者:&nbsp;{{article.author}} </p>
                            </div>

                            <div class="new_article_n">
                                {{article.body | safe}}
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </div>
    </div>
</div>
<div class="copy">
    <p>
        <a href="#">首页</a>
        <a href="#">调理产品</a>
        <a href="#">体质分类</a>
        <a href="#">体质测试</a>
        <a href="#">养生必读</a>
        <a href="#">联系我们</a>
    </p>
    <p>Copyright &copy; 2015.Company name All rights reserved.More Templates  -
        Collect from </p>
</div>
<script src="/js/jquery-1.11.0.min.js"></script>
<script src="/bootstrap/js/bootstrap.js"></script>
<script src="/js/survey.js"></script>


</body>
</html>
