<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>Page title</title>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/bootstrap/css/product/bootstrap.min.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/product.css">

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
    <div id="mainBody">
        <div class="container">
            <div class="row">
                <!-- Sidebar ================================================== -->
                <div id="sidebar" class="col-sm-3 col-md-3">
                    <ul id="sideManu" class="nav nav-tabs nav-stacked">
                        {% for i, productsType in productsTypesList %}
                          {% if i == 0 %}
                            <li class="subMenu open"><a data-id={{productsType.parentProductType.id}} onclick="addProducts(this)"> {{productsType.parentProductType.name}} [{{productsType.parentProductType.count}}]</a>
                                <ul>
                                    {% for child in productsType.childProductType %}
                                      <li><a data-id={{child.id}} onclick="addProducts(this)" class="active">{{child.name}} ({{child.count}})
                                      </a></li>
                                    {% endfor %}
                                </ul>
                            </li>
                          {% else %}
                            <li class="subMenu"><a data-id={{productsType.parentProductType.id}} onclick="addProducts(this)"> {{productsType.parentProductType.name}} [{{productsType.parentProductType.count}}]</a>
                                <ul style="display:none">
                                {% for child in productsType.childProductType %}
                                  <li><a data-id={{child.id}} onclick="addProducts(this)" class="active">{{child.name}} ({{child.count}})
                                  </a></li>
                                {% endfor %}
                                </ul>
                            </li>
                          {% endif %}

                        {% endfor %}
                    </ul>
                    <br/>

                    {% for product in clickProducts %}
                      <div class="thumbnail">
                          <img src="{{product.imageUrl}}" title="Bootshop New Kindel" alt="Bootshop Kindel">
                          <div class="caption">
                              <h5>{{product.name}} ￥{{product.price}}</h5>
                          </div>
                      </div>
                      <br/>
                    {% endfor %}


                </div>
                <!-- Sidebar end=============================================== -->
                <div class="col-sm-9 col-md-9">
                    <div class="well well-small">
                        <h4>推荐产品
                        </h4>
                        <div class="row-fluid">
                            <div id="featured" class="carousel slide">
                                <div class="carousel-inner">
                                  {% for i, recommendProducts in recommendProductsList %}
                                    {% if i == 0 %}
                                        <div class="item active">
                                            <ul class="thumbnails">
                                                  {% for product in recommendProducts.product %}
                                                    <li class="col-sm-3 col-md-3">
                                                        <div class="thumbnail">
                                                            <a href="{{product.linkImageUrl}}"><img src="{{product.imageUrl}}" alt=""></a>
                                                            <div class="caption">
                                                                <h5>{{product.name}} ￥{{product.price}}</h5>
                                                            </div>
                                                        </div>
                                                    </li>
                                                  {% endfor %}
                                            </ul>
                                        </div>
                                    {% else %}
                                    <div class="item">
                                        <ul class="thumbnails">
                                              {% for product in recommendProducts.product %}
                                                <li class="col-sm-3 col-md-3">
                                                    <div class="thumbnail">
                                                        <a href="{{product.linkImageUrl}}"><img src="{{product.imageUrl}}" alt=""></a>
                                                        <div class="caption">
                                                            <h5>{{product.name}} ￥{{product.price}}</h5>
                                                        </div>
                                                    </div>
                                                </li>
                                              {% endfor %}
                                        </ul>
                                    </div>
                                    {% endif %}
                                  {% endfor %}
                                </div>
                                <a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
                                <a class="right carousel-control" href="#featured" data-slide="next">›</a>
                            </div>
                        </div>
                    </div>
                    <h4>产品 </h4>
                    <div id = "descProducts"></div>
                    <div class="pagination pull-right">
                    </div>
                </div>
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
<script src="/js/plugin/artTemplate-master/dist/template-native.js"></script>
<script src="/js/product.js"></script>
<script src="/js/ajaxpages.js"></script>
<script id="productsTemplate" type="text/html">
  <ul class="thumbnails">
    <!--[for (var i = 0; i < products.length; i ++) {]-->
    <li class="col-sm-4 col-md-4">
       <div class="thumbnail">
           <a href="<!--[=products[i].linkImageUrl]-->"><img src="<!--[=products[i].imageUrl]-->" alt=""/></a>
           <div class="caption">
               <h5><!--[=products[i].name]--> ￥<!--[=products[i].price]--> </h5>
           </div>
       </div>
   </li>
    <!--[}]-->


  </ul>
</script>
<script>
template.defaults.openTag = '<!--[';
template.defaults.closeTag = ']-->';

function pageShow(id, count) {
  ////每个页面中
  //new js_Page(1,{url:请求URL地址,maxP:总页数});
  //$('需要在哪地方插入分页HTML').html(js_Page.s_P.showPage());　　　
  console.log(id, count, 23423)
  new js_Page(1, {
    url:'/home/getProducts',
    maxP: Math.ceil(count / 6 ),
    ajaxD: {productsTypeId: id},
    callback: function(obj) {
       var data = obj.data.products
       var html = template('productsTemplate', {products: data });
       document.getElementById('descProducts').innerHTML = html;
    }
  })
  $('.pagination').html(js_Page.s_P.showPage());　

}
function addProducts(e){
    var id = e.getAttribute("data-id");
    $.ajax({
      url: '/home/getProducts',
      type: 'get',
      data: {
        productsTypeId: id,
        page: 1
      },
      dataType: 'json'
    }).done(function(json) {
      if (json.status === false) {
        return toastr.error(json.message);
      }
      var data = json.data.products
      console.log(json.data)
      var html = template('productsTemplate', {products: data });
      document.getElementById('descProducts').innerHTML = html;
      js_Page.s_P = null;
      pageShow(id,json.data.count);
      console.log(data)
    });
}
</script>
<script>
$(document).ready(function (){
      $.ajax({
        url: '/home/getProducts',
        type: 'get',
        data: {
          productsTypeId: "{{productsTypesList[0].parentProductType.id}}",
          page: 1
        },
        dataType: 'json'
      }).done(function(json) {
        if (json.status === false) {
          return toastr.error(json.message);
        }
        var data = json.data
        var products = data.products
        var html = template('productsTemplate', {products: products });
        document.getElementById('descProducts').innerHTML = html;
        console.log(Math.ceil(data.count/ 6))
        js_Page.s_P = null;
        pageShow({{productsTypesList[0].parentProductType.id}},data.count);
      });


});
</script>

</body>
</html>
