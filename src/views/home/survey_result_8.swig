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
                  <h2>湿热质的你是...</h2>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/8-1.jpg"></div>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/8-2.jpg"></div>
              </div>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>湿热质特征</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>平时面部常有油光，容易生痤疮粉刺。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>舌头颜色偏红，舌苔黄腻，容易口苦口干，身体感沉重容易疲倦。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>有些人还会心烦意乱，做事无精神，眼球血丝多，大便干燥硬结，或者显得比较粘，小便短而颜色发深，有些男性的阴囊显得比较潮湿，女性则白带增多。脉象多“滑数”，显得急促。 </li>
                  <li><i class="glyphicon glyphicon-tint"></i>容易心烦急躁。胸闷。食欲不好，容易恶心，不太想吃东西。</li>
              </ul>
          </div>
      </div>

      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>我为什么会湿热</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>抽烟、喝酒、熬夜则伤肝胆，进而伤脾胃，从而易促生湿热体质；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>长期的饮食不节，暴饮暴食，宵夜等会导致肝胆脾胃功能的紊乱。易促生湿热体质；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>长期的情绪压抑也会伤肝胆，导致体内湿热无法疏泄，如果再借酒消愁，易生湿热体质；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>滋补过度，或本来就已经有内热的倾向，又再进补，易生湿热体质；湿热的人不要大补；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>长期生活在湿热环境中的人，比其它的人更容易促生湿热体质。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>湿热质的困扰</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>牙齿比较黄，牙龈比较红，口唇也比较红；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>大便燥结或者粘滞不爽。小便深黄色，异味大；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>容易紧张、压抑、焦虑、发怒。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>湿热需警惕</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>皮肤问题：脂溢性皮炎、酒糟鼻、痤疮等。或者下半身皮肤真菌感染，如脚癣等；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>肝胆系统疾病：携带肝炎病毒、急性黄疸型肝炎、胆结石；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>泌尿系统及生殖系统感染性疾病。在过度疲劳时较易感染膀胱炎、尿道炎、肾盂肾炎等；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>筋骨肌肉疲劳。容易腰酸背痛，浑身酸痛。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>湿热质养生方法</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>湿热质者有两大特点，一是阳气偏盛，二是湿性黏滞，阳气偏盛则功能偏亢。因此适合较大强度及运动量的锻炼，如各种球类、武术、长跑、健身、自行车、力量训练、爬山等，可以发散体内多余的热邪，二可通过出汗以祛湿，达到热去湿除的目的。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>原则：清化湿热，分消走泄；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>宜食用清利湿热的食品，如薏苡仁、莲子、茯苓、红小豆、蚕豆、绿豆、兔肉、鸭肉、鲫鱼、绿豆芽、冬瓜、丝瓜、葫芦、苦瓜、黄瓜、西瓜、白菜、芹菜、卷心菜、莲藕、空心菜等。平时多吃清利湿热的水果，如：西瓜、梨、香蕉、柚子；可食适量平性水果，如：苹果、柠檬、葡萄、甘蔗；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>忌食性湿热的水果，如：荔枝、龙眼、榴莲、番石榴、椰子、桃子、菠萝；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>忌辛辣燥烈的食物，如辣椒、生姜、大葱、大蒜等；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>忌大热大补的食物，如狗肉、鹿肉、牛肉、羊肉、动物内脏；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>戒烟酒。不宜暴饮暴食、酗酒。所有食物里边，湿热之性最大的就是酒；少吃辛辣肥腻的食品、甜味品。</li>
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
