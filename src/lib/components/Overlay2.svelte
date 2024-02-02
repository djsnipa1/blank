<script>
  import { fly } from 'svelte/transition';
  import { circOut } from 'svelte/easing';
  import { isOverlayOpen } from '$lib/stores/OverlayStore.js';
  let windowWidth = window.innerWidth;
  let windowHeight = window.innerHeight;
  let divWidth = windowWidth / 10;
</script>

{#if isOverlayOpen}
  <div class="overlay">
    {#each Array(10) as _, i}
      <div
        class="div text-center"
        transition:fly|global={{
          delay: i * 50,
          y: -windowHeight,
          easing: circOut
        }}
        style="width: {divWidth}px;"
      >
        Div {i + 1}
      </div>
    {/each}
  </div>
{/if}

<!--
<div class="min-h-screen min-w-screen fixed top-0 left-0 flex justify-center items-center bg-gray-100 opacity-90 w-full">
  <div class="bg-gray-800 text-white rounded-md p-8 y-10 relative max-w-lg opacity-95">
  <button class="absolute top-2 right-3 text-4xl text-gray-300 hover:-translate-y-0.5 transition-transform"
  on:click={() => {isOverlayOpen.set(false)}}>&times;</button>
<p class="p-4 m-4">im overlay</p>
  </div>
</div>
-->

<style>
  .overlay {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 9999; /* Ensures the overlay appears above all other elements */
    display: flex;
    flex-direction: row;
    flex-wrap: wrap-reverse;
    height: 100vh;
    width: 100%;
  }
  .div {
    flex: 1;
    border: 1px solid black; /* For visualization */
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
    padding: 0.1rem;
    color: black;
    /*  background-color: orange; */
    opacity: 100;
    @apply bg-slate-800;
  }
</style>
