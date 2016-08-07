{% extends 'leftArticleAndProduct.swig' %}

{% block importCss %}
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/survey.css">
{% endblock %}

{% block contentButton %}
  </div>
  <!-- Sidebar end=============================================== -->
  <div class="col-xs-12 col-sm-12 col-md-9">
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>测试结果</h1>
              <span>你的体质是</span>
              <div class="soma">{{questition.survey}}</div>
              <div>{{questition.prefer}}
              <div class="other-desc"><i class="glyphicon glyphicon-info-sign"></i>兼有各倾向体质说明</div>
              <div id="Demo" style="text-align:center;">
                  <div id="VoteMain"> </div>
              </div>
              <div>
                  <h2>特禀质的你是...</h2>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/9-1.jpg"></div>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/9-2.jpg"></div>
              </div>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>特禀质特征</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>无特殊，或有畸形，或有先天生理缺陷。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>心理特征：因疾病各有不同。</li>
              </ul>
          </div>
      </div>

      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>我为什么会特禀</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>遗传性疾病有垂直遗传，家族共同特征等。 </li>
                  <li><i class="glyphicon glyphicon-tint"></i>胎传性疾病为母体影响胎儿个体生长发育以及相关疾病特征。 </li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>特禀质的困扰</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>对外界环境适应能力差。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>过敏体质者对过敏季节适应能力差，易引发宿疾。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>特禀需警惕</h1>
              <ul align="left">
                 <li><i class="glyphicon glyphicon-tint"></i>过敏体质者易药物过敏，易患花粉病症；</li>
                 <li><i class="glyphicon glyphicon-tint"></i>遗传疾病如血友病、先天愚型及中医所称“五迟”、“五软”、“解颅”等；</li>
                 <li><i class="glyphicon glyphicon-tint"></i>易患胎传疾病如胎寒、胎热、胎惊、胎肥、胎痫、胎弱等。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>特禀质养生方法</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>饮食宜清淡、均衡，粗细搭配适当，荤素配伍合理；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>不宜食用腥膻发物及含致敏物质的食物；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>亦不宜食用酒、辣椒、浓茶、咖啡等辛辣之品。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>被褥床单要经常洗晒，可防止对尘螨过敏；不宜养宠物，以免对动物皮毛过敏。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>经常吃些灵芝粉可以起到一定的预防过敏的作用。夏季细菌容易滋生，要注意保持居室通风和卫生。</li>
              </ul>
          </div>
      </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}

{% block importJs %}
{% endblock %}

{% block scripts %}
  <script>
  var result_value_1 = '{{questition.scoreQuestition.flat}}'
  var result_value_2 = '{{questition.scoreQuestition.deficiency}}';
  var result_value_3 = '{{questition.scoreQuestition.Yang}}'
  var result_value_4 = '{{questition.scoreQuestition.Yin}}';
  var result_value_5 = '{{questition.scoreQuestition.phlegmy}}';
  var result_value_6 = '{{questition.scoreQuestition.syndrome}}';
  var result_value_7 = '{{questition.scoreQuestition.blood}}';
  var result_value_8 = '{{questition.scoreQuestition.qiDepression}}';
  var result_value_9 = '{{questition.scoreQuestition.specialTalents}}';
  </script>
  <script src="/js/survey.js"></script>
{% endblock %}
