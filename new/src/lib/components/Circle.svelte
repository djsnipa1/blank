<script>
import { scale, fade } from 'svelte/transition';
import { elasticOut } from 'svelte/easing';

  let scaling = false;

  function customScale() {
    return {
      duration:  10000,
      easing: elasticOut,
      css: (t, u) => `transform: scale(${t * 3000}%)` //`translateX(${u *  100}%)`
    };
  }
</script>


<div class="background min-w-full min-h-full flex justify-center items-center">
<button on:click={() => { scaling = !scaling }} class="btn">Scale Bitch</button>
  <!-- Your component content goes here -->
  {#if scaling}
  <div 
    class="absolute border-white border-4 rounded-[100%] h-20 w-20 mx-auto"
    transition:customScale
    ></div>
  {/if}
</div>

<style>
  .background {
    position: absolute;
    height:  100%;
    width:  100%;
    top:  0;
    left:  0;
    background-color: #282828; 
    /* background-color: #d2ff57; */
    background-image: url("https://www.transparenttextures.com/patterns/3px-tile.png");
    background-repeat: repeat;
    background-size: auto;
    z-index: -1; /* Places the background behind the content */
  }
</style>
