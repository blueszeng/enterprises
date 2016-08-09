{% extends 'leftArticleAndProduct.swig' %}

{% block importCss %}
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/article.css">
{% endblock %}

{% block contentButton %}
  </div>
  <!-- Sidebar end=============================================== -->
  <article class="col-xs-12 col-sm-12 col-md-9">
      <div class="inside-bg">
          <div class="position"><a class="p-home" title="首页" href="/"></a> <a href="/">首页 ></a> <a href="/home/article">养生必读 ></a>文章</div>
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
{% endblock %}

{% block importJs %}
  <script src="/js/survey.js"></script>
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
