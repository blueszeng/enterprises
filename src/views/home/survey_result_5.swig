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
                  <h2>气郁质的你是...</h2>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/5-1.jpg"></div>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/5-2.jpg"></div>
              </div>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>气郁质特征</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>形体消瘦或偏胖，面色苍暗或萎黄；舌淡红，苔白，脉弦；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>平素性情急躁易怒，易于激动，或忧郁寡欢，胸闷不舒；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>一旦生病则胸肋胀痛或窜痛；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>有时乳房及小腹胀痛，月经不调，痛经；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>咽中梗阻，如有异物；或颈项瘿瘤；胃脘胀痛，泛吐酸水，呃逆哎气；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>腹痛肠鸣，大便泄利不爽；体内之气逆行，头痛眩晕。</li>
              </ul>
          </div>
      </div>

      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>我为什么会气郁</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>父母遗传，天生忧郁王子；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>工作压力比较大：白领阶层、行政工作人员、管理人员；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>幼年曾经历过比较大的不良生活事件打击有关系，比如说单亲，寄人篱下，小时候自信心受到过打击等；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>过度要求完美，不仅对自己，而且对别人。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>气郁质的困扰</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>精神难以集中；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>自己都不喜欢的古怪脾气，常在郁闷、发邪火之间摆荡；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>不思饮食，或消化不良；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>夫妻房事不和谐。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>气郁需警惕</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>颈项部的甲亢、慢性胃炎、慢性结肠炎、慢性胆囊炎、肝炎等；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>偏头痛：有偏头痛、胸痛和肋间神经痛，主要是以胀痛为主；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>易感抑郁症。虽然每个人都可能因为生活和环境有暂时性的气郁，但是如果形成了长期的气郁质就要注意了；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>肿瘤倾向。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>气郁质养生方法</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>适合方法气郁质往往是情志郁与气机郁相互影响，因此，须从调气机与调情志双向入手，调气机的最好方法就是运动，动则气血流畅，气和则心平，从而达到调畅情志的作用。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>气郁体质的人，若不兼阳虚、气血虚等体质，则可坚持较大强度与运动量的锻炼，如跑步、登山、球类、武术、游泳等，足够的运动量，能较好地调畅气血，促进食欲及改善睡眠。若从调情志的角度出发，瑜伽等运动多是形神并练，形动而神静，可达动形而怡神的效果。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>注意事项日常生活中应注意动静结合，不可贪图安逸，逸则气壅，容易加重气血郁滞。选择适合你，同时你喜欢的运动。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>气郁质者当以行气为主，常用行气食物如：芜菁、洋葱；橘、茴香等；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>少食收敛酸涩之物，如乌梅、南瓜、泡菜、杨桃；少食肥甘厚味的食物；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>亦不可多食冰冷食物；忌食辛辣、咖啡、浓茶等刺激品（尤其睡觉前）</li>
                  <li><i class="glyphicon glyphicon-tint"></i>学会发泄，不要太敏感。放松心情，迟钝些好。“思伤脾”，过度思虑，会使脾胃不运、消化不良，出现腹胀、食欲不振、常叹气、大便不畅等；</li>
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
