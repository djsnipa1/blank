<script>
  import { fly } from 'svelte/transition';
  import { expoIn } from 'svelte/easing';
  let visible = false; // a boolean variable to control the visibility
</script>

<label>
  <input type="checkbox" bind:checked={visible} />
  visible
</label>

{#if visible}
  <p in:fly={{ y: 200, duration: 2000, easing: expoIn }} out:fade>
    Flies in, fades out
  </p>
{/if}

<!-- Use an {#if} block with the transition directive -->
{#if visible}
  <div transition:fly={{ y: 200, duration: 1000, easing: expoIn }}>
    Hello world!
  </div>
{/if}

<!-- Use a button to toggle the visibility -->
<button
  on:click={() => (visible = !visible)}
  class="h-20 w-30 bg-teal-500 absolute">Toggle</button
>

<style>
  /* Style the div element */
  div {
    width: 100px;
    height: 100px;
    background: blue;
  }
</style>
