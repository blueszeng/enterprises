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
                  <h2>阳虚质的你是...</h2>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/3-1.jpg"></div>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/3-2.jpg"></div>
              </div>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>阳虚质特征</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>阳虚体质的人火力不够，阳气不足，怕冷，要吃热，穿暖。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>面色白，口淡不渴，喜热饮</li>
                  <li><i class="glyphicon glyphicon-tint"></i>抗疲劳能力差，稍微活动一下就会大汗淋漓、气喘吁吁。有时候甚至没有活动，也会不自觉地就出汗</li>
                  <li><i class="glyphicon glyphicon-tint"></i>小便多，大便稀，总觉得神疲乏力，有些提不起精神。 </li>
                  <li><i class="glyphicon glyphicon-tint"></i>耐夏不耐冬，比较安静内向，不大说话，不喜欢活动，睡觉喜欢蜷卧。 </li>
                  <li><i class="glyphicon glyphicon-tint"></i>舌头颜色偏淡，略显胖大，边缘有齿印痕，舌苔湿润。脉象沉迟微弱。常带“熊猫眼”，唇色淡，头发容易脱落。 </li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>我为什么会阳虚</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>熬夜，总是超过23点也不睡觉；冷饮和凉茶是日常饮品；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>离空调近一点，才够凉快；冬季，还习惯光脚穿鞋或鞋拖；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>曾经纵情过度；穿衣戴帽，要风度不要温度；过度控制饮食，营养不良；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>先天禀赋不足，父母为阳虚质。或父母婚育年龄太大，孕期吃了太多寒凉食物等。吃了太多的生冷寒凉或者工作环境湿冷；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>长期、大量用抗生素、激素类、利尿剂、清热解毒中药；久病损伤阳气；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>长期大量运动，或喜欢桑拿，出汗过度；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>汗出当风，大汗淋漓之后，总是要吹风，甚至洗冷水澡。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>阳虚质的困扰</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>郁闷、不开心，面色发黄，没有光泽；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>怕冷，尤其背、腹部。到冬天手冷过肘，足冷过膝；没到老年，总起夜，小便多，清清白白；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>经常腹泻，尤其是五更早起拉稀便。吃凉的更容易腹泻。阳虚没有火力，水谷转化不彻底，就会经常拉肚子；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>脚跟、腰腿疼痛、下肢易肿胀。低血压，头晕，心悸气短。肾其华在发”所以会有头发稀疏、脱发；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>睡眠轻、容易惊醒。常常咬到自己的舌头。耳鸣、黑眼圈、口唇发暗。肾阳虚通常拖累脾胃阳气而导致脾肾阳虚，眼圈口唇则会反映脾脏的问题；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>上热下寒。常牙痛、口臭、面红油腻、痤疮、烦躁失眠，同时也有尿频、夜尿、便烂、腰腿冷痛。这种表现，下寒是真，上热是假，勿盲目吃清热解毒败火药物；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>情绪消沉，容易有抑郁倾向。</li>
              </ul>
          </div>
      </div>

      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>阳虚需警惕</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>肥胖：如果你是一个又白又软的胖子，那么减肥首先要考虑加强阳气的补养，绝对不要忍饥挨饿；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>骨质疏松：阳虚质到了更年期、老年期很容易患骨质疏松；水肿：体内水液不能蒸腾，会出现小腿或脚踝水肿；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>关节炎、类风湿：阳虚的人容易遭受风寒湿邪的侵袭，从而导致血脉痹阻不通；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>冠心病，心率失常：有一种冠心病是因阳气不足，心（胸）阳不振，痰浊凝聚，气血瘀滞，痰浊、阴寒、瘀血痹阻心脉导致；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>脾胃虚寒症：吃凉腹痛，平日容易腹胀、腹泻，消化不良，或有堵塞感，或呃逆、反酸等；甲状腺功能低下：特别怕冷，特别没精神，血压低；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>过敏性鼻炎，哮喘：体内寒气过重，天气变冷，或遇冷空气就喷嚏不断，发展出鼻塞，鼻息肉，甚至严重。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>阳虚质养生方法</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>适合方法多运动。动能生阳，选择温和的运动，最好在户外阳光里。我们推荐有氧锻炼，其特点是强度低，有节奏，持续时间较长。常见的有氧运动项目有：步行、慢跑、骑自行车、打太极拳、瑜伽、健身舞、韵律操等。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>多吃温平补益食物：羊肉，韭菜，虾，桂圆，花生，胡萝卜，山药，牛肉，普洱，红茶，桃子，黑豆，茴香，茼蒿，鲈鱼，羊腰子，鱿鱼，芡实，羊奶，奶酪，草鱼等；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>冷饮，冰箱里刚拿出来的食物，一定不要再碰。生姜在夏季是很好的选择。“男子不可百日无姜”；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>喝水要小口，温饮，避免大量猛饮，容易出现脾胃发胀，促生痰湿体质。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>注意保暖。腹背，小腹，腰部，脚和腿是保暖的重点。每晚烫脚，搓后腰；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>空调要远离，尤其在出汗的时候，更不能用空调、电扇直对身体吹凉风；</li>
                  <li><i class="glyphicon glyphicon-tint"></i>拒绝熬夜。23点前睡觉是底线。子夜是养阳的最佳时机。</li>
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
