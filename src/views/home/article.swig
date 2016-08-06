{% extends 'layout.html' %}

{% block importCss %}
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/article.css">
{% endblock %}

{% block contentRight %}
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
                              <a data-id={{article.id}} onclick="clickArticlesAddCount(this)" href="/home/articleDetail?articlesId={{article.id}}">{{article.title}}</a></li>
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
                        <a data-id={{article.id}} onclick="clickArticlesAddCount(this)" href="/home/articleDetail?articlesId={{article.id}}">{{article.title}}</a></li>
                      {% endfor %}
                    </ul>
                </div>
            </div>
            {% endfor %}
         </div>

      </div>
  </div>
{% endblock %}


{% block importJs %}
{% endblock %}

{% block scripts %}
  <script>
  function clickArticlesAddCount (e) {
      var id = e.getAttribute("data-id");
      $.ajax({
        url: '/home/clickArticles',
        type: 'get',
        data: {
          articlesId: id
        },
        dataType: 'json'
      }).done(function(json) {
      });
  }
  </script>
{% endblock %}
