<script>
  import Confetti from './confetti.svelte';
  import { tick } from 'svelte';
  import ThreeDButton from '$lib/components/ThreeDButton.svelte';

  let isVisible = false;
</script>

{#if isVisible}
  <Confetti />
{/if}

<div
  class="min-h-screen min-w-full flex flex-col items-center justify-center border-red-800 rounded-md border-2 padding-4 z-1 overflow-hidden"
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

  <div />

  <ThreeDButton buttonText="Show Confetti" rotate1="90" rotate2="180" />
</div>

<style>
  button {
    @apply text-3xl text-amber-500 bg-stone-800 rounded-md p-2 transition-all;
  }

  button:hover {
    @apply bg-stone-700;
  }
</style>
