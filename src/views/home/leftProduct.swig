{% extends 'layout.html' %}

{% block content %}

{% block leftProducts %}
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
                            <a href="{{product.linkImageUrl}}"><img src="{{product.imageUrl}}" title="Bootshop New Kindel" alt="Bootshop Kindel"></a>
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
{% endblock %}
{% endblock %}
