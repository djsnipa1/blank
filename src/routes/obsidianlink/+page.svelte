<p class="text-xl text-white">This <a href="#">here</a> is a link</p>

<style>
  a {
    text-decoration: none;
    color: #c4f803;
    font-weight: 700;
    position: relative;
  }

  a::before {
    content: '';
    background-color: hsla(72.73, 97.61%, 49.22%, 1);
    position: absolute;
    left: 0;
    bottom: 3px;
    width: 100%;
    height: 8px;
    z-index: -1;
    transition: all 0.3s ease-in-out;
  }

  a:hover::before {
    bottom: 0;
    height: 100%;
  }

  body {
    display: grid;
    font-family: 'Poppins', sans-serif;
    font-size: 27px;
    line-height: 1.5;
    height: 100vh;
    place-items: center;
  }
</style>
