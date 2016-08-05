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
            <li class="active"><a href="soma.html">体质分类</a></li>
            <li><a href="#">体质测试</a></li>
            <li><a href="#">养生必读</a></li>
            <li><a href="#">联系我们</a></li>
        </ul>
    </div>
</nav>
<div id="main">
    <div class="container">
        <div class="row top-div-img">
            <img src="/images/article/top.jpg">
        </div>
        <div class="row row-panel">
            <div class="col-sm-12 catalog">
                当前位置: 首页 > 养生必读
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6">
                {% for articleType in articleTypesListOne %}
                  <div class="panel">
                      <div class="panel-heading">
                          <h3 class="panel-title"><i class="glyphicon glyphicon-star"></i> {{articleType.name}}</h3>
                      </div>
                      <div class="panel-body">
                          <ul>
                              {% for article in articleType.article %}
                                <li><i class="glyphicon glyphicon-circle-arrow-right"></i>
                                <a href="/home/articleDetail?articlesId={{article.id}}">{{article.title}}</a></li>
                              {% endfor %}
                          </ul>
                      </div>
                  </div>
                {% endfor %}
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6">
            {% for articleType in articleTypesListTwo %}
              <div class="panel">
                  <div class="panel-heading">
                      <h3 class="panel-title"><i class="glyphicon glyphicon-star"></i> 面板标题</h3>
                  </div>
                  <div class="panel-body">
                      <ul>
                        {% for article in articleType.article %}
                          <li><i class="glyphicon glyphicon-circle-arrow-right"></i>
                          <a href="/home/articleDetail?articlesId={{article.id}}">{{article.title}}</a></li>
                        {% endfor %}
                      </ul>
                  </div>
              </div>
              {% endfor %}
           </div>

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

</body>
</html>
