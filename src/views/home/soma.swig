{% extends 'layout.html' %}

{% block importCss %}
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/soma.css">

  <link rel="stylesheet" href="/css/animate.css">
  <!-- Magnific Popup -->
  <link rel="stylesheet" href="/css/magnific-popup.css">
  <!-- Salvattore -->
  <link rel="stylesheet" href="/css/salvattore.css">
  <!-- Theme Style -->
  <link rel="stylesheet" href="/css/soma.css">
{% endblock %}

{% block contentRight %}
  <div id="fh5co-main">
      <div class="container">

          <div class="row">

              <div id="fh5co-board" data-columns>
                  <div class="item">
                      <div class="animate-box">
                          <h3>平和质</h3>
                          <a href="/home/soma_detail?somaTypeId=1" class="image-popup fh5co-board-img"><img src="/images/soma/img_22.jpg" alt="平和质"></a>
                          <div class="fh5co-desc">体态适中、面色红润、精力充沛、目光有神，唇色红润、睡眠、食欲良好、头发稠密有光泽，不易生病、身体各项机能良好</div>
                      </div>
                  </div>
                  <div class="item">
                      <div class="animate-box">
                          <h3>气虚质</h3>
                          <a href="/home/soma_detail?somaTypeId=2" class="image-popup fh5co-board-img"><img src="/images/soma/img_14.jpg" alt="Free HTML5 Bootstrap template"></a>
                          <div class="fh5co-desc">肌肉松弛、容易疲乏、易出汗、稍有运动便气喘吁吁；声音低弱、情绪不稳定、内向、胆小；机体防御力低，容易感冒，容易患内脏下垂、虚劳症。</div>
                      </div>
                  </div>
                  <div class="item">
                      <div class="animate-box">
                          <h3>阳虚质</h3>
                          <a href="/home/soma_detail?somaTypeId=3" class="image-popup fh5co-board-img"><img src="/images/soma/img_15.jpg" alt="Free HTML5 Bootstrap template"></a>
                          <div class="fh5co-desc">性格多沉静、内向；形体白胖、肌肉松弛；常感到手脚发凉，胃部、背部、腰膝部怕冷，大便溏薄、小便颜色清；易出现肿胀、泻泄、阳痿、痰饮。</div>
                      </div>
                  </div>
                  <div class="item">
                      <div class="animate-box">
                          <h3>阴虚质</h3>
                          <a href="/home/soma_detail?somaTypeId=4" class="image-popup fh5co-board-img"><img src="/images/soma/img_16.jpg" alt="Free HTML5 Bootstrap template"></a>
                          <div class="fh5co-desc">形体瘦长，性情急躁，活泼好动；手足心热、口咽干燥、喜冷饮、皮肤偏干、易生皱纹、眩晕耳鸣、睡眠差、小便短、大便干燥，易患阴亏燥热病。</a>
                              阴液亏少，以口燥咽干、手足心热等。</div>
                      </div>
                  </div>
                  <div class="item">
                      <div class="animate-box">
                          <h3>气郁质</h3>
                          <a href="/home/soma_detail?somaTypeId=5" class="image-popup fh5co-board-img"><img src="/images/soma/img_26.jpg" alt="Free HTML5 Bootstrap template"></a>
                          <div class="fh5co-desc">体型偏瘦，闷闷不乐、焦虑不安、敏感多疑，感情脆弱，易受到惊吓、常感到乳房及两胁部胀痛、或走窜疼痛、易失眠、食欲减退、健忘、痰多。</div>
                      </div>
                  </div>
                  <div class="item">
                      <div class="animate-box">
                          <h3>痰湿质</h3>
                          <a href="/home/soma_detail?somaTypeId=6" class="image-popup fh5co-board-img"><img src="/images/soma/img_18.jpg" alt="Free HTML5 Bootstrap template"></a>
                          <div class="fh5co-desc">形体肥胖，腹部肥肉松弛；性格温和、善于忍耐；面部油脂多、胸闷、痰多、面色黄胖而黯、口黏腻或甜、易困乏、身重不爽，易患消渴、中风、胸痹</div>
                      </div>
                  </div>
                  <div class="item">
                      <div class="animate-box">
                          <h3>血瘀质</h3>
                          <a href="/home/soma_detail?somaTypeId=7" class="image-popup fh5co-board-img"><img src="/images/soma/img_20.jpg" alt="Free HTML5 Bootstrap template"></a>
                          <div class="fh5co-desc">瘦人居多，易郁闷、烦躁健忘。面色晦暗、色素沉着、易出现瘀斑、易患疼痛，舌下静脉曲张，牙龈易出血、女性易患痛经、闭经、经色紫黑有血块。</div>
                      </div>
                  </div>
                  <div class="item">
                      <div class="animate-box">
                          <h3>湿热质</h3>
                          <a href="/home/soma_detail?somaTypeId=8" class="image-popup fh5co-board-img"><img src="/images/soma/img_19.jpg" alt="Free HTML5 Bootstrap template"></a>
                          <div class="fh5co-desc">体型偏胖、性格急躁易怒；面部油光，易生痤疮、粉刺、易口苦口干、身重困倦，小便有发热感，尿色发黄，男阴囊潮湿、女带下量多。</div>
                      </div>
                  </div>

                  <div class="item">
                      <div class="animate-box">
                          <h3>特禀质</h3>
                          <a href="/home/soma_detail?somaTypeId=9" class="image-popup fh5co-board-img"><img src="/images/soma/img_17.jpg" alt="Free HTML5 Bootstrap template"></a>
                          <div class="fh5co-desc">—般多为过敏性体质，即使不感冒也会鼻塞、打喷嚏、流鼻涕、咳嗽，易患哮喘，皮肤瘙痒、红斑、一抓就红，易起荨麻疹，外界环境适应能力差</div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
{% endblock %}

{% block importJs %}
  <!-- Waypoints -->
  <script src="/js/jquery.waypoints.min.js"></script>

  <!-- Salvattore -->
  <script src="/js/salvattore.min.js"></script>
  <!-- Main JS -->
  <script src="/js/main.js"></script>
{% endblock %}

{% block scripts %}
{% endblock %}
