<script>
  import { fly } from 'svelte/transition';
  let cats = [
    { id: 1, name: 'Keyboard Cat' },
    { id: 2, name: 'Maru' },
    { id: 3, name: 'Henri The Existential Cat' }
  ];
  let visible = false;
</script>

<button on:click={() => (visible = !visible)} class="w-10 h-4">Suck</button>

<input type="checkbox" bind:checked={visible} />

<ul>
  <!-- PATTERNS EACH BLOCK -->
  {#each { length: 6 } as _, i}
    {#if visible}
      <h1
        class="cursor-pointer p-2 hover:text-yellow-600 rounded-md mt-1"
        in:fly={{ x: -200, duration: 400, delay: i * 100 }}
        out:fly={{ x: 200, duration: 400, delay: i * 100 }}
      >
        <a href="/pat0{i + 1}">Patterns - {i + 1}</a>
      </h1>
    {/if}
  {/each}
</ul>
