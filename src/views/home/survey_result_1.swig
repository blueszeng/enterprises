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
              <div>阴阳平和，脏腑气血功能正常，先天禀赋良好，<br>后天调养得当之人，对四时寒暑及地理环境适应能力强，患病少。</div>
              <div class="other-desc"><i class="glyphicon glyphicon-info-sign"></i>兼有各倾向体质说明</div>
              <div id="Demo" style="text-align:center;">
                  <div id="VoteMain"> </div>
              </div>
              <div>
                  <h2>平和质的你是...</h2>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/1-1.jpg"></div>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/1-2.jpg"></div>
              </div>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>平和质特征</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>形体特征：体形匀称、健壮。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>心理特征：性格随和开朗。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>常见表现：面色、肤色润泽，头发稠密有光泽，目光有神，鼻色明润，嗅觉通利，味觉正常，唇色红润，精力充沛，不易疲劳，耐受寒热，睡眠安和，胃口良好，两便正常，舌色淡红，苔薄白，脉和有神。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>发病倾向：平时较少生病。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>对外界环境适应能力：对自然环境和社会环境适应能力较强。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>血瘀需警惕</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>宜:吃饭饥饱适中,多吃五谷杂粮,蔬菜瓜果.</li>
                  <li><i class="glyphicon glyphicon-tint"></i>忌:吃饭太饱,或太饥,偏食,饮食太油腻,或辛辣.</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>平和质养生方法</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>平和质的人具有阴阳和调、血脉畅达、五脏匀平的生理特点，这类体质的人，饮食调养的第一原则是膳食平衡，要求食物多样化。在平衡膳食的基础上，平和质者的饮食调养，还应注意气味调和，并根据不同的季节选择适宜的饮食。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>食性与药性的寒热温凉一样，是依据它们对机体所施加的影响来决定的，即从药食作用于机体所产生的反应概括出来的。凡能减轻或消除热证的药物或食物，其性寒凉；反之能够减轻或消除寒证的药物，其性温热。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>平和质者饮食要寒温适中，不宜过于偏食寒性或热性的食物，以免日久影响机体的阴阳平衡，引起体质的变易。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>日常生活中，应尽量选择平性或稍具温、凉之性的食品；也可以利用相反的食性而调节食物的寒温之性，如水产品鱼、鳖之类多有寒凉之性，烹调时多放一些葱、姜等调味品，或加料酒，以减轻水产食物的寒性。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>平和质的人应力求五味调和，不可偏食。五味各有所归之脏，想体质保持阴阳平衡、气血充盛、脏腑协调，必须均衡地摄入五味。而长期偏嗜五味中的某一味或某几味，则会使脏腑功能失调。</li>
              </ul>
          </div>
      </div>
  </div>
  </div>
</div>
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

{% block importJs %}

{% endblock %}
