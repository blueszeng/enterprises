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
                  <h2>血瘀质的你是...</h2>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/7-1.jpg"></div>
                  <div class="col-sm-6 col-xs-6"><img src="/images/survey/7-2.jpg"></div>
              </div>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>血瘀质特征</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>面色灰暗，皮肤偏暗有色素沉着，容易出现瘀斑和疼痛。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>唇色暗淡或者发紫。舌头暗有点、片状瘀斑，舌头下静脉曲张，脉象则细涩。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>有些人眼眶暗黑，鼻子暗滞，头发容易脱落，肌肤发干。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>皮肤比较粗糙，有时在不知不觉中会出现皮肤瘀青。眼睛里的红丝很多，刷牙时牙龈容易出血，容易烦躁、健忘，性情急躁。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>女性常常痛经、闭经，或者经血中有比较多凝结的血块，经血颜色紫黑有块状物，有些人甚至有出血倾向、吐血和崩漏。 </li>
              </ul>
          </div>
      </div>

      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>我为什么会血瘀</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>情绪抑郁、紧张，性格内向，有不顺心的事情都放在心里，不懂得释放，郁结日久，影响气血运行</li>
                  <li><i class="glyphicon glyphicon-tint"></i>喜欢吃油腻的东西、偏爱甜食、血脂过高或者经常食用过咸的食物，喝水量不足，均能是血液过分粘稠，导致气血运行不畅</li>
                  <li><i class="glyphicon glyphicon-tint"></i>气虚、阴虚体质，推动功能减退，导致气血运行迟缓或淤积</li>
                  <li><i class="glyphicon glyphicon-tint"></i>生活环境寒冷，血管长期痉挛，血型迟缓或者凝滞于微血管</li>
                  <li><i class="glyphicon glyphicon-tint"></i>缺少运动锻炼，心肌收缩力减弱，气血运行迟缓</li>
                  <li><i class="glyphicon glyphicon-tint"></i>近代研究发现，各种慢性炎症引起局部组织郁血、水肿、粘连，或者病理产物停积于局部，影响气血运行</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>血瘀质的困扰</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>身上某些部位是不是会出现一些淤青，或出现肿物包块，尤其冬季较多。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>面部常见难以化脓的暗紫色小丘疹或结节为主的痤疮，而且痤疮印很难消退。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>抑郁、呆板，面部肌肉不灵活。而且记忆力不佳，经常健忘。此外，血淤体质者肝气不舒展，容易心烦易怒。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>面色晦暗，容易生斑，很难见到白净、清爽的面容。</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>血瘀需警惕</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>冠心病：血气不通将对心脏产生巨大的损害，冠心病人多见于血瘀体质。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>中风：瘀血发展到脑部，且情况严重时，大脑就会因为缺乏血气而突发中风。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>肥胖并发症：肥胖加血瘀体质，年纪轻轻就有可能患上高血压、中风、冠心病、糖尿病等疾病。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>月经不调、痛经：血瘀体质者体内有瘀血，全身气血流通不畅，不通则痛，因此会发生痛经。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>肿瘤：脏腑瘀血过久就容易发展为肿瘤。瘀血体质间夹阴虚体质者也易生肿瘤。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>抑郁容易导致肝气郁结，促生血瘀体质。瘀血体质反过来也会加重抑郁。偏头痛、胁肋间神经痛</li>
              </ul>
          </div>
      </div>
      <div class="row row-survey-result">
          <div class="well" align="center">
              <h1>血瘀质养生方法</h1>
              <ul align="left">
                  <li><i class="glyphicon glyphicon-tint"></i>含胸塌腰的坐姿会对心肺动能产生不良彭响。如果用电脑时坐姿不对，很容易对心肺功能造成不良影响。为此应该多做一些运动，振奋心肺功能，从而促进瘀血的消散。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>春季是血瘀者最佳的保养季节，春季肝气舒畅此时不应穿紧身衣服、生闷气，而应该走向户外，做一些拉伸运动女子不要把头发扎起这样可以得到疏泄。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>血瘀者在秋冬季节要注意保暖，秋凉、冬寒都很容易导致血气运行不畅，从而促进血瘀的产生。此时可以吃一些血散瘀的温性食物，促进气血顺畅运行。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>血瘀体质者一个重要的产生原则就是疏肝活血，为此除了要注意精神起居之外，还要注意饮食调节，多吃活血散瘀、疏肝散气的食物。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>调节精神情志：肝疏泄正常，则精神愉快、心情舒畅、疏泄不及，则精神抑郁、多愁善感。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>促进消化吸收：肝的疏泄会促进脾胃的升降和胆汁的分泌，保证正常的消化吸收。</li>
                  <li><i class="glyphicon glyphicon-tint"></i>维持气血、津液的运行：肝失疏泄，则气机阻滞，出现血瘀，于是身体出现刺痛、肿块。肝人体内最大的实质性脏器，非常重要。肝无法疏泄，就容易出现血淤体质。血瘀者食疗养生时，不但要活血散瘀还要疏肝散气。</li>
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
