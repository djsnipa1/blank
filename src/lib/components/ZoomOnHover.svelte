<script>
  /*
$('.article-container').mouseover(function() {

        $(this).find('.article-img-holder').css('transform', 'scale(1.2)');
    });

    $('.article-container').mouseout(function() {

        $(this).find('.article-img-holder').css('transform', 'scale(1)');
    });
    */
</script>

<div class="article-container">
  <div class="article-img-holder"></div>
  <a class="article-title-link" href="#"
    >Music that will wake you up on your way to work</a
  >
</div>

<style>
  article-container {
    width: 300px;
    height: 200px;
    border: 1px solid #000000;
    overflow: hidden;
    position: relative;
  }

  .article-img-holder {
    width: 100%;
    height: 100%;
    background: url(https://awik.io/demo/background-image-zoom/traffic3.png);
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    transition: all 1s;
  }

  .article-title-link {
    color: #ffffff;
    text-shadow: 1px 1px 1px #000000;
    font-size: 20px;
    font-weight: bold;
    position: absolute;
    bottom: 0;
    padding: 10px;
    text-decoration: none;
  }
  .article-title-link:hover {
    text-decoration: underline;
  }
</style>
