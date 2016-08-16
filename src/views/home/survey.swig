{% extends 'leftArticleAndProduct.swig' %}

{% block importCss %}
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/survey.css">
{% endblock %}

{% block contentButton %}
  </div>
  <!-- Sidebar end=============================================== -->
  <form action="/home/survey" method='post'>
      <div class="col-xs-12 col-sm-12 col-md-9 survey-start-desc">
          <div class="panel-group" id="accordion">
              <div class="panel panel-default">
                 <!--  <div class="panel-heading">
                       <h4 class="panel-title">

                       </h4>
                   </div>  -->
                  <div class="panel-collapse collapse">
                      <div class="panel-body">
                          此“体质测试”是依据中医国家标准开发，虽测试过程繁复，但却能帮助知晓身体情况，洞悉疾病隐患，当常常自检
                          <code>注：本测试不适用于孕妇及20岁以下小孩</code>
                          <ul>
                              <li><i class="glyphicon glyphicon-heart"></i>了解自己的体质</li>
                              <li><i class="glyphicon glyphicon-heart"></i>了解体质与疾病的关系</li>
                              <li><i class="glyphicon glyphicon-heart"></i>获得个性化调理体质方案</li>
                          </ul>
                      </div>
                  </div>
              </div>
          </div>
          <h1 class="start-survey">根据中医药学会《中医体质分类与判定》，测试您的体质
              <div class="">请根据最近三个月的体验和感觉回答以下问题。孕妇不建议使用本测试；请在测试前进行下面的选择：</div>
          </h1>
          <div class="start-survey">
                <div class="well"><h3>请选择测试人的性别</h3>
                    <div class="radio-survey">
                        <input name="sex" value="male" type="radio" checked="checked" class="hidden"><div class="radio-inline select-survey">男性</div>
                        <input name="sex" value="female" type="radio" class="hidden"><div class="radio-inline">女性</div>
                    </div>
                </div>
    <!--            <div class="well"><h3>请选择测试人的年龄</h3>
                    <div class="radio-survey">
                        <input value="a" type="radio" checked="checked" class="hidden"><div class="radio-inline select-survey">20-30岁</div>
                        <input value="b" type="radio" class="hidden"><div class="radio-inline">31-40岁</div>
                        <input value="b" type="radio" class="hidden"><div class="radio-inline">41-50岁</div>
                        <input value="b" type="radio" class="hidden"><div class="radio-inline">51-60岁</div>
                        <input value="b" type="radio" class="hidden"><div class="radio-inline">61岁及以上</div>
                    </div>
                </div>
                <div class="well"><h3>是否保存本次测试</h3>
                    <div class="radio-survey">
                        <input value="a" checked="checked" type="radio" class="hidden"><div onclick="$('.contact-tel').show()" class="radio-inline select-survey">保存</div>
                        <input value="b" type="radio" class="hidden"><div onclick="$('.contact-tel').hide()" class="radio-inline">取消</div>
                        <div class="contact-tel pull-right"> 联系电话：<input type="tel"></div>
                    </div>
                </div>  -->
                <div>
                    <button type="button" class="btn-start-survey pull-right btn btn-success">开始测试</button>
                </div>
          </div>
      </div>
      <div class="col-xs-12 col-sm-12 col-md-9 hidden survey-ques-desc">
          <div class="panel-group">
              <!-- 平和型 */ -->
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse1">
                          <a href="#">
                              您精神充分吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse1" class="panel-collapse collapse in">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="flat[]" checked="checked" value="1" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="flat[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="flat[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="flat[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="flat[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse2">
                          <a href="#">
                              您容易疲惫吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse2" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="flat[]" value="5" checked="checked" type="checkbox" class="hidden"><div lable="same-surey-value-1" class="same-surey radio-inline select-survey">没有</div>
                                  <input name="flat[]" value="4" type="checkbox" class="hidden"><div lable="same-surey-value-2" class="same-surey radio-inline">很少</div>
                                  <input name="flat[]" value="3" type="checkbox" class="hidden"><div lable="same-surey-value-3" class="same-surey radio-inline">有时</div>
                                  <input name="flat[]" value="2" type="checkbox" class="hidden"><div lable="same-surey-value-4" class="same-surey radio-inline">常常</div>
                                  <input name="flat[]" value="1" type="checkbox" class="hidden"><div lable="same-surey-value-5" class="same-surey radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse3">
                          <a href="#">
                              您说话声响有力吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse3" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="flat[]" value="5" checked="checked" type="checkbox" class="hidden"><div lable="same-survey-value-16" class="same-surey radio-inline select-survey">没有</div>
                                  <input name="flat[]" value="4" type="checkbox" class="hidden"><div lable="same-survey-value-17" class="same-surey radio-inline">很少</div>
                                  <input name="flat[]" value="3" type="checkbox" class="hidden"><div lable="same-survey-value-18" class="same-surey radio-inline">有时</div>
                                  <input name="flat[]" value="2" type="checkbox" class="hidden"><div lable="same-survey-value-19" class="same-surey radio-inline">常常</div>
                                  <input name="flat[]" value="1" type="checkbox" class="hidden"><div lable="same-survey-value-20" class="same-surey radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse4">
                          <a href="#">
                              您感到心花怒放吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse4" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="flat[]" value="5" type="checkbox" checked="checked" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="flat[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="flat[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="flat[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="flat[]" value="1" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse5">
                          <a href="#">
                              您比普通 人耐受不了冰冷（冬天的冰冷，夏天的冷空调、电扇）吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse5" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="flat[]" value="5" checked="checked" type="checkbox" class="hidden"><div lable="same-surey-value-6" class="same-surey radio-inline select-survey">没有</div>
                                  <input name="flat[]" value="4" type="checkbox" class="hidden"><div lable="same-surey-value-7" class="same-surey radio-inline">很少</div>
                                  <input name="flat[]" value="3" type="checkbox" class="hidden"><div lable="same-surey-value-8" class="same-surey radio-inline">有时</div>
                                  <input name="flat[]" value="2" type="checkbox" class="hidden"><div lable="same-surey-value-9" class="same-surey radio-inline">常常</div>
                                  <input name="flat[]" value="1" type="checkbox" class="hidden"><div lable="same-surey-value-10" class="same-surey radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse6">
                          <a href="#">
                              您能顺应外界自然和社会环境的变化吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse6" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="flat[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="flat[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="flat[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="flat[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="flat[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse7">
                          <a href="#">
                              您容易失眠吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse7" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="flat[]" value="5" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="flat[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="flat[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="flat[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="flat[]" value="1" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse8">
                          <a href="#">
                              您容易忘事（健忘）吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse8" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="flat[]" value="5" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="flat[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="flat[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="flat[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="flat[]" value="1" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- 气虚型 */ -->
              <div class="panel panel-default hidden">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse9">
                          <a href="#">
                              你容易疲惫吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse9" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="deficiency[]" value="1" type="checkbox" checked="checked" class="hidden"><div class="same-surey-value-1 radio-inline select-survey">没有</div>
                                  <input name="deficiency[]" value="2" type="checkbox" class="hidden"><div class="same-surey-value-2 radio-inline">很少</div>
                                  <input name="deficiency[]" value="3" type="checkbox" class="hidden"><div class="same-surey-value-3 radio-inline">有时</div>
                                  <input name="deficiency[]" value="4" type="checkbox" class="hidden"><div class="same-surey-value-4 radio-inline">常常</div>
                                  <input name="deficiency[]" value="5" type="checkbox" class="hidden"><div class="same-surey-value-5 radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse10">
                          <a href="#">
                              您容易气短（呼吸急促，接不上气吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse10" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="deficiency[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="deficiency[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="deficiency[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="deficiency[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="deficiency[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse11">
                          <a href="#">
                              您容易心慌吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse11" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="deficiency[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="deficiency[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="deficiency[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="deficiency[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="deficiency[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse12">
                          <a href="#">
                              容易头晕或站起时晕眩吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse12" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="deficiency[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="deficiency[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="deficiency[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="deficiency[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="deficiency[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse13">
                          <a href="#">
                              您比他人容易患感冒吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse13" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="deficiency[]" value="1" checked="checked" type="checkbox" class="hidden"><div lable="same-surey-value-11" class="same-surey radio-inline select-survey">没有</div>
                                  <input name="deficiency[]" value="2" type="checkbox" class="hidden"><div lable="same-surey-value-12" class="same-surey radio-inline">很少</div>
                                  <input name="deficiency[]" value="3" type="checkbox" class="hidden"><div lable="same-surey-value-13" class="same-surey radio-inline">有时</div>
                                  <input name="deficiency[]" value="4" type="checkbox" class="hidden"><div lable="same-surey-value-14" class="same-surey radio-inline">常常</div>
                                  <input name="deficiency[]" value="5" type="checkbox" class="hidden"><div lable="same-surey-value-15" class="same-surey radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse14">
                          <a href="#">
                              您喜欢安静、懒得说话吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse14" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="deficiency[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="deficiency[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="deficiency[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="deficiency[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="deficiency[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default hidden">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse15">
                          <a href="#">
                              您说话声响有力吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse15" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="deficiency[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="same-survey-value-16 radio-inline select-survey">没有</div>
                                  <input name="deficiency[]" value="2" type="checkbox" class="hidden"><div class="same-survey-value-17 radio-inline">很少</div>
                                  <input name="deficiency[]" value="3" type="checkbox" class="hidden"><div class="same-survey-value-18 radio-inline">有时</div>
                                  <input name="deficiency[]" value="4" type="checkbox" class="hidden"><div class="same-survey-value-19 radio-inline">常常</div>
                                  <input name="deficiency[]" value="5" type="checkbox" class="hidden"><div class="same-survey-value-20 radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                      <div class="panel-heading">
                          <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                              href="#collapse16">
                              <a href="#">
                                  您活动量就容易出虚汗吗？
                              </a>
                          </h4>
                      </div>
                      <div id="collapse16" class="panel-collapse collapse">
                          <div class="panel-body">
                              <div class="well survey-value">
                                  <div class="radio-survey">
                                      <input name="deficiency[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                      <input name="deficiency[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                      <input name="deficiency[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                      <input name="deficiency[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                      <input name="deficiency[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              <!-- 阳虚型 */ -->
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse17">
                          <a href="#">
                              您手脚发凉吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse17" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yang[]" value="1" type="checkbox"  checked="checked" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="Yang[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="Yang[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="Yang[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="Yang[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse18">
                          <a href="#">
                              您胃脘部、背部或腰膝部怕冷吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse18" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yang[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="Yang[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="Yang[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="Yang[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="Yang[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse19">
                          <a href="#">
                              您感到怕冷衣服比他人穿得多吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse19" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yang[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="Yang[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="Yang[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="Yang[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="Yang[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default hidden">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse20">
                          <a href="#">
                              您比普通人不了冰冷（冬天的冰冷，夏天的冷空调、电扇等。
                          </a>
                      </h4>
                  </div>
                  <div id="collapse20" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yang[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="same-surey-value-6 radio-inline select-survey">没有</div>
                                  <input name="Yang[]" value="2" type="checkbox" class="hidden"><div class="same-surey-value-7 radio-inline">很少</div>
                                  <input name="Yang[]" value="3" type="checkbox" class="hidden"><div class="same-surey-value-8 radio-inline">有时</div>
                                  <input name="Yang[]" value="4" type="checkbox" class="hidden"><div class="same-surey-value-9 radio-inline">常常</div>
                                  <input name="Yang[]" value="5" type="checkbox" class="hidden"><div class="same-surey-value-10 radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default hidden">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse21">
                          <a href="#">
                              您比他人容易患感冒吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse21" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yang[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="same-surey-value-11 radio-inline select-survey">没有</div>
                                  <input name="Yang[]" value="2" type="checkbox" class="hidden"><div class="same-surey-value-121 radio-inline">很少</div>
                                  <input name="Yang[]" value="3" type="checkbox" class="hidden"><div class="same-surey-value-13 radio-inline">有时</div>
                                  <input name="Yang[]" value="4" type="checkbox" class="hidden"><div class="same-surey-value-14 radio-inline">常常</div>
                                  <input name="Yang[]" value="5" type="checkbox" class="hidden"><div class="same-surey-value-15 radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse22">
                          <a href="#">
                              您吃（喝）凉的东西会感到不舒适或许怕吃（喝）凉东西吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse22" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yang[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="Yang[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="Yang[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="Yang[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="Yang[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                      <div class="panel-heading">
                          <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                              href="#collapse23">
                              <a href="#">
                                  你受凉或吃（喝）凉的东西后，容易腹泻（拉肚子）吗？
                              </a>
                          </h4>
                      </div>
                      <div id="collapse23" class="panel-collapse collapse">
                          <div class="panel-body">
                              <div class="well survey-value">
                                  <div class="radio-survey">
                                      <input name="Yang[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                      <input name="Yang[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                      <input name="Yang[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                      <input name="Yang[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                      <input name="Yang[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              <!-- 阴虚型 */ -->
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse24">
                          <a href="#">
                              您感到手脚心发热吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse24" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yin[]" value="1" type="checkbox" checked="checked" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="Yin[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="Yin[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="Yin[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="Yin[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse25">
                          <a href="#">
                              您觉得身体、脸上发热吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse25" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yin[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="Yin[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="Yin[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="Yin[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="Yin[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse26">
                          <a href="#">
                              您皮肤或口唇干吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse26" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yin[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="Yin[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="Yin[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="Yin[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="Yin[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse27">
                          <a href="#">
                              您口唇的颜色比普通人红吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse27" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yin[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="Yin[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="Yin[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="Yin[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="Yin[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse28">
                          <a href="#">
                              您容易便秘或大便枯燥吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse28" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yin[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="Yin[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="Yin[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="Yin[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="Yin[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse29">
                          <a href="#">
                              您面部两潮红或偏红吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse29" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yin[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="Yin[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="Yin[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="Yin[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="Yin[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse30">
                          <a href="#">
                              您感到眼睛干涩吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse30" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="Yin[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="Yin[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="Yin[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="Yin[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="Yin[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                      <div class="panel-heading">
                          <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                              href="#collapse31">
                              <a href="#">
                                  您活动量稍大容易出虚汗吗？
                              </a>
                          </h4>
                      </div>
                      <div id="collapse31" class="panel-collapse collapse">
                          <div class="panel-body">
                              <div class="well survey-value">
                                  <div class="radio-survey">
                                      <input name="Yin[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                      <input name="Yin[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                      <input name="Yin[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                      <input name="Yin[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                      <input name="Yin[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              <!-- 痰湿型 */ -->
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse32">
                          <a href="#">
                              您感到胸闷或腹部胀满吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse32" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="phlegmy[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="phlegmy[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="phlegmy[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="phlegmy[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="phlegmy[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse33">
                          <a href="#">
                              您感身体不轻松或不直爽？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse33" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="phlegmy[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="phlegmy[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="phlegmy[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="phlegmy[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="phlegmy[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse34">
                          <a href="#">
                              您腹部肥满坚实吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse34" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="phlegmy[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="phlegmy[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="phlegmy[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="phlegmy[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="phlegmy[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse35">
                          <a href="#">
                              您有额部油脂分泌多景象吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse35" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="phlegmy[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="phlegmy[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="phlegmy[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="phlegmy[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="phlegmy[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse36">
                          <a href="#">
                              您上眼睑比他人肿（仍细微隆起的景象）吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse36" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="phlegmy[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="phlegmy[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="phlegmy[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="phlegmy[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="phlegmy[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse37">
                          <a href="#">
                              您嘴里有黏黏的觉得吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse37" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="phlegmy[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="phlegmy[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="phlegmy[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="phlegmy[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="phlegmy[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse38">
                          <a href="#">
                              您平常痰多，特别是咽喉部总感到有痰堵着吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse38" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="phlegmy[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="phlegmy[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="phlegmy[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="phlegmy[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="phlegmy[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse39">
                          <a href="#">
                              您舌苔厚腻或有舌苔厚厚的觉得吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse39" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="phlegmy[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="phlegmy[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="phlegmy[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="phlegmy[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="phlegmy[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- 湿热型 */ -->
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse40">
                          <a href="#">
                              您面部或鼻部有清淡感或许油亮发光吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse40" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="syndrome[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="syndrome[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="syndrome[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="syndrome[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="syndrome[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse41">
                          <a href="#">
                              你容易生痤疮或疮疖吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse41" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="syndrome[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="syndrome[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="syndrome[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="syndrome[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="syndrome[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse42">
                          <a href="#">
                              您感到口苦或嘴里有异味吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse42" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="syndrome[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="syndrome[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="syndrome[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="syndrome[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="syndrome[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse43">
                          <a href="#">
                              您大使黏滞不爽、有解不尽的觉得吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse43" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="syndrome[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="syndrome[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="syndrome[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="syndrome[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="syndrome[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse44">
                          <a href="#">
                              您小便时尿道有发热感、尿色浓（深）吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse44" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="syndrome[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="syndrome[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="syndrome[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="syndrome[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="syndrome[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- （限女性答复） -->
              <div class="panel panel-default survey-female">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse45">
                          <a href="#">
                              您带下色黄（白带颜色发黄）吗？（限女性答复）
                          </a>
                      </h4>
                  </div>
                  <div id="collapse45" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="syndrome[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="syndrome[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="syndrome[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="syndrome[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="syndrome[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- （限男性答复） -->
              <div class="panel panel-default survey-male">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse46">
                          <a href="#">
                              您的阴囊部位湿润吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse46" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="syndrome[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="syndrome[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="syndrome[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="syndrome[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="syndrome[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- 血瘀型 */ -->
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse47">
                          <a href="#">
                              您的皮肤在不知不觉中会呈现青紫瘀斑（皮下出血）吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse47" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="blood[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="blood[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="blood[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="blood[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="blood[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse48">
                          <a href="#">
                              您两颧部有纤细红丝吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse48" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="blood[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="blood[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="blood[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="blood[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="blood[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse49">
                          <a href="#">
                              您身体上有哪里疼痛吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse49" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="blood[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="blood[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="blood[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="blood[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="blood[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse50">
                          <a href="#">
                              您面色晦黯或容易呈现褐斑吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse50" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="blood[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="blood[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="blood[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="blood[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="blood[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse51">
                          <a href="#">
                              您容易有黑眼圈吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse51" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="blood[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="blood[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="blood[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="blood[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="blood[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse52">
                          <a href="#">
                              您容易忘事（健忘）吗
                          </a>
                      </h4>
                  </div>
                  <div id="collapse52" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="blood[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="blood[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="blood[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="blood[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="blood[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse53">
                          <a href="#">
                              您口唇颜色偏黯吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse53" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="blood[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="blood[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="blood[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="blood[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="blood[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- 气郁型 */ -->
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse54">
                          <a href="#">
                              您感到闷闷不乐、情绪低落吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse54" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="qiDepression[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="qiDepression[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="qiDepression[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="qiDepression[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="qiDepression[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse55">
                          <a href="#">
                              您容易肉体紧张、焦虑不安吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse55" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="qiDepression[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="qiDepression[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="qiDepression[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="qiDepression[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="qiDepression[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse56">
                          <a href="#">
                              您多愁善感、感情软弱吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse56" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="qiDepression[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="qiDepression[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="qiDepression[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="qiDepression[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="qiDepression[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse57">
                          <a href="#">
                              您容易感到惧怕或遭到惊吓吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse57" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="qiDepression[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="qiDepression[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="qiDepression[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="qiDepression[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="qiDepression[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse58">
                          <a href="#">
                              您胁肋部或乳房腹痛吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse58" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="qiDepression[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="qiDepression[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="qiDepression[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="qiDepression[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="qiDepression[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse59">
                          <a href="#">
                              您事出有因叹息吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse59" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="qiDepression[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="qiDepression[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="qiDepression[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="qiDepression[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="qiDepression[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse60">
                          <a href="#">
                              您咽喉部有异物感，且吐之不出、咽之不下吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse60" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="qiDepression[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="qiDepression[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="qiDepression[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="qiDepression[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="qiDepression[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- 特禀型 */ -->
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse61">
                          <a href="#">
                              您没有感冒时也会打喷嚏吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse61" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="specialTalents[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="specialTalents[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="specialTalents[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="specialTalents[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="specialTalents[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse62">
                          <a href="#">
                              您没有感冒时也会鼻塞、流鼻涕吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse62" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="specialTalents[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="specialTalents[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="specialTalents[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="specialTalents[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="specialTalents[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse63">
                          <a href="#">
                              您有因时节变化、温度变化或异味等缘由而咳喘的景象吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse63" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="specialTalents[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="specialTalents[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="specialTalents[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="specialTalents[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="specialTalents[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse64">
                          <a href="#">
                              您容易过敏（对药物、食物、气息、花粉或在时节交替、气候变化时）吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse64" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="specialTalents[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="specialTalents[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="specialTalents[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="specialTalents[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="specialTalents[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse65">
                          <a href="#">
                              您的皮肤容易起荨麻疹（风团、风疹块、风疙瘩）吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse65" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="specialTalents[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="specialTalents[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="specialTalents[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="specialTalents[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="specialTalents[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse66">
                          <a href="#">
                              您的因过敏呈现过紫癜（紫白色瘀点、瘀斑）吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse66" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="specialTalents[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="specialTalents[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="specialTalents[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="specialTalents[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="specialTalents[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                          href="#collapse67">
                          <a href="#">
                              您的皮肤一抓就红，并呈现抓痕吗？
                          </a>
                      </h4>
                  </div>
                  <div id="collapse67" class="panel-collapse collapse">
                      <div class="panel-body">
                          <div class="well survey-value">
                              <div class="radio-survey">
                                  <input name="specialTalents[]" value="1" checked="checked" type="checkbox" class="hidden"><div class="radio-inline select-survey">没有</div>
                                  <input name="specialTalents[]" value="2" type="checkbox" class="hidden"><div class="radio-inline">很少</div>
                                  <input name="specialTalents[]" value="3" type="checkbox" class="hidden"><div class="radio-inline">有时</div>
                                  <input name="specialTalents[]" value="4" type="checkbox" class="hidden"><div class="radio-inline">常常</div>
                                  <input name="specialTalents[]" value="5" type="checkbox" class="hidden"><div class="radio-inline">总是</div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
           <div>
                <button type="submit" class="btn-result-survey pull-right btn btn-success">查看结果</button>
            </div>
      </div>
     
  </form>
  </div>
</div>
{% endblock %}

{% block importJs %}
{% endblock %}

{% block scripts %}
  <script>
      $('.select-survey').click();
      //测试前的姓别选项
      $('.start-survey .radio-inline').click(function(){
          $(this).parents('.start-survey').find('div').removeClass('select-survey');
          $(this).addClass('select-survey');
          $(this).prev().click();  
      })
      //选中效果
      $('.radio-survey .radio-inline').click(function(){
          $(this).parents('.radio-survey').find('div').removeClass('select-survey');
          $(this).addClass('select-survey');         
          $(this).parents('.radio-survey').find('input').prop('checked',false);
          $(this).prev().click();
          var next = $(this).parents('.panel').next();          
          while(next.hasClass('hidden'))
                next = next.next();           
          //下列自动展开
          if(!next.find('.panel-collapse').hasClass('in')&&!$(this).parents('.panel').hasClass('hidden'))
          {         
              next.find('.panel-title').click();
              var scroll_height = $(this).parents('.panel').height();
              var t = $('body').scrollTop();
              $('body').animate({'scrollTop':t+scroll_height},1000)
          }
      })
      //      开始测试
      $('.btn-start-survey').click(function(){
            var sex = $('input[name="sex"]:checked').val();
            if(sex == 'female'){
                $('.survey-male').addClass('hidden');
                $('.survey-female').removeClass('hidden');
            }
            else{
                $('.survey-female').addClass('hidden');
                 $('.survey-male').removeClass('hidden');
            }
            $(this).parents('.survey-start-desc').html('');
            $('.survey-ques-desc').removeClass('hidden');
      }) 
      $('.btn-result-survey').click(function(){
            $(this).addClass('disabled');
      })

       //相同问题只选一次   
     $('.same-surey').click(function(){
            var lable = $(this).attr('lable');       
            $('.'+lable).each(function(){
                $(this).click();
            });
      })
  </script>
{% endblock %}
