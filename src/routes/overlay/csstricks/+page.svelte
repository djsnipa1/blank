<script>
  import { elasticOut } from 'svelte/easing';
  let showing = true;
  // Custom transition function
  // function whoosh(node) {
  //   console.log(node)
  // }
  function whoosh() {
    return {
      duration: 1000,
      easing: elasticOut,
      css: (t, u) => `transform: scale(${t}) translateX(${u * 100}%);`
    };
  }
</script>

<h3 class="text-2xl text-center underline font-blogger font-bold">
  <a href="https://css-tricks.com/making-your-first-custom-svelte-transition/"
    >Making Your First Custom Svelte Transition | CSS-Tricks</a
  >
</h3>

<label for="showing"> Showing </label>
<input id="showing" type="checkbox" bind:checked={showing} />

{#if showing}
  <h1 transition:whoosh>Hello custom transition!</h1>
{/if}

<style>
  
</style>
