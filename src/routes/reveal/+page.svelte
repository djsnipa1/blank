<script>
  import { scale } from 'svelte/transition';
  import { quintOut } from 'svelte/easing';
</script>

<div class="mask" transition:scale="{{ duration:  2000, easing: quintOut }}">
  <!-- Content goes here -->
  <p></p>
</div>

<style>
  .mask {
    position: fixed;
    top:  0;
    left:  0;
    width:  100vw;
    height:  100vh;
    background: #fff; /* or any background color */
    mask: radial-gradient(circle at center, transparent  0%, black  100%);
    mask-size:  0%  0%;
    mask-position: center;
  }
</style>
