<script>
  import { confetti } from '@neoconfetti/svelte';
  import { tick } from 'svelte';
  import { bright } from 'gruvbox';

  let isVisible = false;

  var random = Math.random;
  var coin_flip = () => random() > 0.5;
  function clicker() {
    console.log(random());
    console.log(coin_flip());
  }

  $: outerWidth = 0;
  $: innerWidth = 0;
  $: outerHeight = 0;
  $: innerHeight = 0;
</script>

<svelte:window
  bind:innerWidth
  bind:outerWidth
  bind:innerHeight
  bind:outerHeight
/>

<div
  class="h-screen flex items-center justify-center border-red-800 rounded-md border-2 padding-2 z-1"
>
  <button
    on:click={async () => {
      isVisible = false;
      await tick();
      isVisible = true;
    }}
  >
    Show confetti
  </button>

  {#if isVisible}
    <div
      use:confetti={{
        colors: [
          bright.red,
          bright.green,
          bright.yellow,
          bright.blue,
          bright.purple,
          bright.aqua,
          bright.orange
        ],
        stageWidth: 375
      }}
      class="flex items-center justify-center h-screen w-full z-10"
    />
  {/if}
</div>
<p>
  Inner Width: {innerWidth}
</p>
<p>
  Inner Height: {innerHeight}
</p>
<p>
  Outer Width: {outerWidth}
</p>
<p>
  Outer Height: {outerHeight}
</p>

<style>
  button {
    @apply text-3xl text-amber-500 bg-slate-800 rounded-md p-2;
  }
</style>
