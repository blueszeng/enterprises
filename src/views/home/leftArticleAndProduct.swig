{% extends 'leftProduct.swig' %}
{% block contentRight %}
  <div class="container">
      <div class="row">
          <!-- Sidebar ================================================== -->
          <div id="sidebar" class="hidden-xs hidden-sm col-md-3">
              <ul id="sideManu" class="nav nav-tabs nav-stacked">
                  <li class="subMenu"><a class="sidebar-left-title"> 养生必读</a>
                      <ul>
                          {% for article in clickArticles %}
                            <li><a data-id={{article.id}} onclick="clickArticlesAddCount(this)" class="add-left-current" href="/home/articleDetail?articlesId={{article.id}}">{{article.title}}
                            </a></li>
                          {% endfor %}
                      </ul>
                  </li>
              </ul>
              <br/>
{% endblock %}
