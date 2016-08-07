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
                  <h2>阴虚质的你是...</h2>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/4-1.jpg"></div>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/4-3.jpg"></div>
              </div>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>阴虚质特征</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>一般体形瘦长。性情急躁，外向好动，活泼。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>口燥咽干、唇鼻微干、眼睛干涩、大便燥结、小便短少、皮肤干燥、易生皱纹等症状。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>阴虚内热：比如五心（手、足、心）烦热，面色潮红，有烘热感。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>阴虚质日常还可以见到口渴喜冷饮，眩晕耳鸣，睡眠差，舌质红少津少苔，脉象细弦或数。</li>

              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
              <div class="well" align="center">
                  <h1>我为什么会阴虚</h1>
                  <ul align="left">
                      <li><i class="glyphicon glyphicon-tint"></i>先天禀赋，父母遗传；</li>
                      <li><i class="glyphicon glyphicon-tint"></i>情绪长期压抑不舒展。不能正常发泄会郁结而化火，化火就会向身体内部燃烧消耗，使阴精暗耗；</li>
                      <li><i class="glyphicon glyphicon-tint"></i>长期心脏功能不好，或高血压病人吃利尿药太多；</li>
                      <li><i class="glyphicon glyphicon-tint"></i>长期食用辛辣燥热的食品；</li>
                      <li><i class="glyphicon glyphicon-tint"></i>过多服用利尿药或清热利湿方剂；</li>
                      <li><i class="glyphicon glyphicon-tint"></i>经常熬夜。</li>
                  </ul>
              </div>
          </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>阴虚质的困扰</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>五心烦热：手、足心、胸中发热，常喜欢光脚踩凉地板；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>易口渴，爱喝冷饮；口臭，口腔溃疡。舌红少津少苔；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>肌肤苍白或红，常有烘热感，面色潮红；皮肤干燥；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>眼睛发干，红血丝多；常有眩晕耳鸣；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>睡眠差。睡眠时间短，盗汗；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>急躁易怒；大便干燥。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>阴虚需警惕</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>结核病。阴虚者气血虚弱，阴精耗损，免疫力降低，病毒很容易乘虚而入，从而引发结核病，如肺结核、骨结核、淋巴结核等；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>习惯性失眠。阴虚内热者“五心烦躁”，心烦不安，气候、情绪、饮食、环境稍有改变就容易导致失眠；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>便秘。阴虚者体内缺水，容易引起肠道下降，导致便秘。而且小便也是量少且黄，即使经常喝水也很难改善；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>色斑。阴虚者皮肤容易缺水，污物无法排出，从而生斑，尤其是阴虚火燥相结的色斑是很难祛除的；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>口腔溃疡。阴虚内热者体内火气很大，容易上火，易引发口腔溃疡。而且阴虚内热者皮肤干燥，嘴唇容易开裂，更易产生口疮；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>经期缩短。阴虚内热的女性往往会月经提前，经期缩短，如不及时治疗，甚至产生闭经；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>高血脂、高血压。阴虚者虽然消瘦，但阴虚到一定程度，体内缺水过多，就会导致血液粘稠，血脂升高；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>糖尿病。糖尿病初期，一般都是阴虚为主，总是口渴，但喝多少水也不解渴，而且嘴唇干燥犹如泛起白露；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>肿瘤。阴虚体质者长期情绪压抑再加上瘀血倾向，易患肿瘤，因此如果身体出现不明包块、硬结、便血等症状要特别注意，及时检查。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>阴虚质养生方法</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>阴虚虽属虚，但阴虚则阳亢，阳代表功能，其运动耐性好于阳虚、气虚与血虚等体质，可进行中等强度的体育锻炼，一般的球类、跑步、游泳、爬山等常见的运动均可进行。其中游泳因能滋润肌肤，减少皮肤干燥感，尤宜于皮肤干燥甚者。而太极拳、太极剑、气功、八段锦、五禽戏等动静结合、形神并练的传统项目更为适宜，尤其是静气功锻炼对人体内分泌具双向调节功能，既助阳、亦生阴，可增加体液的生成，亦可调节易于兴奋的精神状态，从而改善阴虚状态。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>阴虚体质者应多食：滋补肾阴以及甘凉滋润的食物，如糯米、瘦猪肉、猪蹄、鸭肉、黑鱼、海参、鸡蛋、豆腐、枸杞、藕、冬瓜、苦瓜、黄瓜、荸荠、生梨、苹果、百合、银耳、黑芝麻、蜂蜜。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>忌食或少食烤炸、辛辣或性温燥烈的食物；忌食或少食高热量如巧克力等食物；力戒烟酒。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>拒绝熬夜。23点前睡觉是底线。熬夜消耗肝血，自然阴虚火旺；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>注意自己的情绪，时刻提醒自己保持淡定。少抱怨、少发火。</li>
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
