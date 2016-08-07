{% extends 'layout.html' %}

{% block importCss %}
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/about.css">
{% endblock %}

{% block contentRight %}
  <div class="container">
      <!--contact-->
      <div class="contact-section">
          <div class="container">
              <div class="contact-form"><div class="col-md-6 contact-in">
                  <p class="sed-para">中医养生</p>
                  <p class="para1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中医养生，就是指通过各种方法颐养生命、增强体质、预防疾病，从而达到延年益寿的一种医事活动。中医养生重在整体性和系统性，目的是预防疾病，治未病。中医理论的著名代表作品是《黄帝内经》。
                      所谓“生”，就是生命、生存、生长之意；所谓养，即保养、调养、补养之意。总之，养生就是保养生命的意思。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以传统中医理论为指导，遵循阴阳五行生化收藏之变化规律，对人体进行科学调养，保持生命健康活力。
                      如《内经》云：“恬淡虚无，真气从之，精神内守，病安从来”，故养生重在养心，保养精、气、神。
                      即通过怡养心神，调摄情志、调剂生活等方法，从而达到保养身体、减少疾病、增进健康、延年益寿的目的。
                  </p>
              </div>
                  <div class="col-md-6 contact-grid">
                      <form>
                          <p class="your-para">姓 名:</p>
                          <input type="text" id="name" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                          <p class="your-para">手 机:</p>
                          <input type="text"  id="phone" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                          <p class="your-para">邮 箱:</p>
                          <input type="text"  id="emal" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                          <p class="your-para">地 址:</p>
                          <input type="text" id="address" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                          <p class="your-para">留 言:</p>
                          <textarea cols="77" id="message" rows="3"  onfocus="this.value='';" onblur="if (this.value == '') {this.value = '';}"></textarea>
                          <div class="send">
                              <input id="submit" type="button" value="确定" >
                          </div>
                      </form>
                  </div>

                  <div class="clearfix"> </div>
              </div>
          </div>
      </div>
      <!--contact-->
      <div class="contact">
          <div class="center-block col-md-6 contact-top">
              <div class="point"> <i class="glyphicon glyphicon-map-marker"></i></div>
              <h4>联系方式</h4>
              <div class="contact-ad">
                  <p>地址:**省**市**区**街道**号<p>
                  <p>电话:18080880888<p>
                  <p>邮箱 :<a href="mailto:info@example.com">mail@example.com</a></p>
                  <ul class="f-icons">
                      <li><a href="#" class="facebook"> </a></li>
                      <li><a href="#" class="pin"> </a></li>
                      <li><a href="#" class="twitter"> </a></li>
                  </ul>

              </div>
          </div>
          <div class="col-md-6 about-map">
              <div id="allmap"></div>
          </div>
          <div class="clearfix"> </div>
      </div>

      <!--//contact-->
  </div>
{% endblock %}

{% block importJs %}
  <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=uwYoIOsooSXmpU8LGUGNUaHmvGToIBpH"></script>
{% endblock %}

{% block scripts %}
  <script>
      // 百度地图API功能
      var map = new BMap.Map("allmap");    // 创建Map实例
      map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);  // 初始化地图,设置中心点坐标和地图级别
      map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
      map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
      map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
  </script>

  <script>
    $(document).ready(function (){
      $('#submit').click(function(){
          $.ajax({
            url: '/home/message',
            type: 'post',
            data: {
              name: $('#name').val(),
              phone: $('#phone').val(),
              emal: $('#emal').val(),
              address: $('#address').val(),
              message: $('#message').val()
            },
            dataType: 'json'
          }).done(function(json) {
            console.log(json.status)
            if (json.status == true) {
              $('#name').val('');
              $('#phone').val('');
              $('#emal').val('');
              $('#address').val('');
              $('#message').val('');
            }
          });
      });
    });
  </script>
{% endblock %}
