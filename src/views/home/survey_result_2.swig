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
              <div class="soma">气虚质</div>
              <div>{{questition.prefer}}
              <div class="other-desc"><i class="glyphicon glyphicon-info-sign"></i>兼有各倾向体质说明</div>
              <div id="Demo" style="text-align:center;">
                  <div id="VoteMain"> </div>
              </div>
              <div>
                  <h2>气虚质的你是...</h2>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/2-1.jpg"></div>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/2-2.jpg"></div>
              </div>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>气虚质特征</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>反复感冒、老爱出汗、说话声音低，不爱运动。很多小孩反复感冒，被称作复感儿，这和气虚体质有关。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>语音低怯、气短懒言，肢体容易疲乏，精神不振，容易出汗。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>舌头呈淡红色，舌体显胖大，舌边缘有齿印痕，脉象虚缓。容易头晕、健忘。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>。有的人大便正常，有的人大便稀烂，便后仍感觉“没拉完”。小便则正常或者量、次数偏多。 </li>
                  <li><i class="glyphicon glyphicon-tint"></i>性格内向、情绪不稳定，胆小不喜欢冒险。不耐受寒邪、风邪、暑邪。 </li>
              </ul>
          </div>
      </div>

      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>我为什么会气虚</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>母亲怀孕时营养不足，妊娠反应强烈持久不能进食、早产、喂养不当。或父母一方是气虚质；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>神过劳，长期过度用脑，劳伤心思，思虑伤脾；形过劳，曾经是重体力劳动者或者是职业运动员；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>长期节食会造成人体摄入营养不足，形成气虚；喜欢吃冰冷寒凉、肥甘厚腻、缺乏运动；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>大病、久病之后，元气大伤；七情郁结，不开心，尤其是吃饭时生气。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>气虚质的困扰</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>肌肉松软，皮肉（肚皮、眼皮、屁股、脸）下垂。脾主肌肉和四肢，脾气虚，四肢肌肉就松软无力；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>气短懒言，疲乏神倦。头晕，健忘；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>节气变化容易感冒。多汗自汗出虚汗，运动更甚；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>没食欲，消化不良，经常腹胀，大便困难；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>面色萎黄或淡白，不开心。头发没有光泽；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>或者胃强脾弱：食欲很好，食速很快为胃强；同时饭后腹胀明显，容易疲乏无力，这是脾虚难化。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>气虚需警惕</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>容易感冒：气虚则汗毛孔的闭合功能不佳，容易受风寒；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>内脏下垂（子宫、胃、肛门等）：气不足则不能托举，所以器官容易下垂；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>肥胖：消化功能不佳，水湿常滞留体内，在皮下堆积；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>高血脂：消化功能不佳，水湿常滞留体内，进入血液血脂增高。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>气虚质养生方法</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>气有能量、功能之意，气虚质即能量不足与功能减退。一些柔中含刚的以内养为主的传统健身法如气功、太极拳、太极剑、八段锦、五禽戏等锻炼方式，有利于养气、补气，改善体质。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>现代运动项目中有氧代谢运动是气虚质的较佳选择，这种运动中氧气能充分酵解体内的糖分，还可消耗体内脂肪，增强和改善心肺功能，常见的项目有：步行、慢跑、缓步登山、游泳、骑自行车、健身舞、韵律操等。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>气虚体质者适宜常吃性平偏温的、具有补益作用的食品。大枣、苹果、红薯、淮山药、芡实、土豆、山药、莲藕、香菇、鸡肉、猪肚、牛肉、羊肉、麦芽糖、蜂蜜、糯米、小米、黄豆等；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>气虚体质者不宜多食生冷苦寒、辛辣燥热等食物，寒凉最伤脾胃；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>细嚼慢咽、七分饱；喝水要小口，温饮，否则容易出现脾胃发胀，促生痰湿体质；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>不能用峻补，否则容易脾胃积滞。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>起居有常。谨避风寒，不要过劳。不熬夜；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>精神养生。遇事不要考虑过多，学会感受直觉，多移情于琴棋书画、唱歌跳舞、朋友交流。</li>
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
