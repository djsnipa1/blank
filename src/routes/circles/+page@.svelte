<script>
  import { Circle } from '$components';
</script>

<div class="background min-w-full min-h-full">
  <!-- Your component content goes here -->
  <Circle />
</div>

<style>
  .background {
    position: absolute;
    height:  100%;
    width:  100%;
    top:  0;
    left:  0;
    background-color: #282828;
    background-image: url("https://www.transparenttextures.com/patterns/3px-tile.png");
    background-repeat: repeat;
    background-size: auto;
    z-index: -1; /* Places the background behind the content */
  }
</style>
