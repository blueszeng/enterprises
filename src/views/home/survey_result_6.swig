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
                  <h2>痰湿质的你是...</h2>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/6-1.jpg"></div>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/6-2.jpg"></div>
              </div>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>痰湿质特征</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>性格偏温和，稳重恭谦，和达，多善于忍耐。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>面部皮肤油脂较多，多汗且黏，胸闷，痰多。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>面色黄胖而黯，眼胞微浮，容易困倦，平素舌体胖大，舌苔白腻，口黏腻或甜，身重不爽，脉滑，喜食肥甘，大便正常或不实，小便不多或微混。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>舌头胖大，舌苔白腻，嘴里常有粘、发腻、发甜的感觉。平时比较爱吃甜食和肥腻食物。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>大便正常或者略稀烂，小便量不多或者颜色稍微有些浑浊。脉象滑。 </li>
              </ul>
          </div>
      </div>

      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>我为什么会痰湿</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>伤肺：久坐，长时间含胸塌背，压迫肺部。呼吸浅，再加上有空气污染，导致氧气不足，体内食物很难代谢，致使痰湿堆积体内，从而易促生痰湿体质；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>伤脾：长期食物肥甘厚味，冰冻寒凉，暴饮暴食，常吃减肥药。经常发怒，情志不舒展，导致伤肝，转而伤脾。不吃早餐、熬夜、宵夜，饮酒过多，伤肝转而伤脾（饮食不节易伤脾胃，发怒、熬夜则易伤肝，肝木克脾土，伤肝就容易伤脾）；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>伤肾：长期口味偏咸，食盐过多。口味过重，长期吃盐太多会增加水湿，既伤脾，也伤肾。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>痰湿质的困扰</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>容易发胖，脚步声大，屁股坐下去就不爱起来；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>大便不畅。喝多了水，就会腹胀、面部虚胖、手脚肿胀、体重增加、大便不畅；</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>痰湿需警惕</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>高血压：一般是伴有胸闷、眩晕、肿胀症状的高血压；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>脂肪肝：饮酒、饮食肥腻、熬夜引起的脂肪肝多属于痰湿体质；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>糖尿病：尤其是因为饮食不节引发的糖尿病；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>肥胖：痰湿者极容易发胖，减肥需要节制饮食，健脾化痰，适度运动。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>痰湿质养生方法</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>痰湿质者，形体多肥胖，运动则气机调畅，有利于津液的运行与代谢，改善体质增进健康。一般宜选择强度中等的运动；若选择运动强度比较小的运动项目进行锻炼，则每天运动时间应该适当延长，在保证有足够的运动量时，减肥效果才能出来。如登山、慢跑、自行车、乒乓球、羽毛球、网球、武术、游泳、健身舞蹈等都可选择。对于体重超重，陆地运动能力极差的人，游泳是较好的选择。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>少甜少酒，少辣少油，少吃甜食、辛辣刺激的食物。少喝酒，所有食物里边，湿热之性最大的就是酒。湿热体质兼杂痰湿体质，最忌讳使用经过油炸煎炒烧烤等高温加工烹制而成的食物。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>学会发泄，不要太敏感。放松心情，迟钝些好。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>“思伤脾”，过度思虑，会使脾胃不运、消化不良，出现腹胀、食欲不振、常叹气、大便不畅等。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>放松心情，多练习深呼吸，清理杂乱纷纭的念头不如跟着感觉走，多思伤脾，脾伤痰湿难化。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>听流畅悠扬舒缓有镇静作用的音乐；多外出旅行。</li>
              </ul>
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
