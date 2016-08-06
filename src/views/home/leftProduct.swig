{% extends 'layout.html' %}
{% block contentLeft %}
  {% for product in clickProducts %}
    <div class="thumbnail">
        <a onclick = "clickProductsAddCount(this)" data-id ="{{product.id}}" href="{{product.linkImageUrl}}"><img  onclick = "clickProductsAddCount(this)" data-id ="{{product.id}}" src="{{product.imageUrl}}" title="Bootshop New Kindel" alt="Bootshop Kindel"></a>
        <div class="caption">
            <h5>{{product.name}} ￥{{product.price}}</h5>
        </div>
    </div>
    <br/>
  {% endfor %}
{% endblock %}

{% block leftProductScripts %}
<script>
  function clickProductsAddCount (e) {
      var id = e.getAttribute("data-id");
      $.ajax({
        url: '/home/clickProducts',
        type: 'get',
        data: {
          productsId: id
        },
        dataType: 'json'
      }).done(function(json) {
      });
  }
</script>
{% endblock %}
