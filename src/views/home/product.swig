{% extends 'leftProduct.swig' %}

{% block importCss %}
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/product.css">
{% endblock %}

{% block contentRight %}
  <div class="container">
      <div >
          <div class="row">
              <!-- Sidebar ================================================== -->
              <div id="sidebar" class="col-sm-3 col-md-3">
                  <ul id="sideManu" class="nav nav-tabs nav-stacked">
                      {% for i, productsType in productsTypesList %}
                        {% if i == 0 %}
                          <li class="subMenu open"><a data-id={{productsType.parentProductType.id}} onclick="addProducts(this)"> {{productsType.parentProductType.name}} [{{productsType.parentProductType.count}}]</a>
                              <ul>
                                  {% for child in productsType.childProductType %}
                                    <li><a  data-id={{child.id}} onclick="addProducts(this)" class="active">{{child.name}} ({{child.count}})
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
{% endblock %}

{% block contentButton %}
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
                                              <a onclick = "clickProductsAddCount(this)" data-id ="{{product.id}}" href="{{product.linkImageUrl}}"><img src="{{product.imageUrl}}" alt=""></a>
                                              <div class="caption">
                                                  <h5>{{product.name}} <span>￥{{product.price}}</span></h5>
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
                                          <a  onclick = "clickProductsAddCount(this)" data-id ="{{product.id}}" href="{{product.linkImageUrl}}"><img src="{{product.imageUrl}}" alt=""></a>
                                          <div class="caption">
                                              <h5>{{product.name}} <span>￥{{product.price}}</span></h5>
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
      <div class="pagination pull-right col-sm-12 col-md-12">
      </div>
  </div>
</div>
</div>
</div>
{% endblock %}

{% block importJs %}
  <script src="/js/plugin/artTemplate-master/dist/template-native.js"></script>
  <script src="/js/product.js"></script>
  <script src="/js/ajaxpages.js"></script>
  <script>
    //
    $('#sidebar  li a').click(function(){
        $('#sidebar  li a').attr('id','');
        $(this).attr('id','left-current');
    });
  </script>
{% endblock %}

{% block scripts %}
  <script id="productsTemplate" type="text/html">
    <ul class="thumbnails">
      <!--[for (var i = 0; i < products.length; i ++) {]-->
      <li class="col-sm-4 col-md-4">
         <div class="thumbnail">
             <a  onclick = "clickProductsAddCount(this)" data-id ="<!--[=products[i].id]-->" href="<!--[=products[i].linkImageUrl]-->"><img src="<!--[=products[i].imageUrl]-->" alt=""/></a>
             <div class="caption">
                 <h5><!--[=products[i].name]--> <span>￥<!--[=products[i].price]--></span> </h5>
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
{% endblock %}
