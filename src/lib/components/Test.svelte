<script>
  import { fly } from 'svelte/transition';
  let cats = [
    { id: 1, name: 'Keyboard Cat' },
    { id: 2, name: 'Maru' },
    { id: 3, name: 'Henri The Existential Cat' }
  ];
  let visible = false;
</script>

<button on:click={visible}>Suck</button>
<input type="checkbox" bind:checked={visible} />
<ul>
  {#each cats as { id, name }, i}
    {#if visible}
      <h1
        in:fly={{ x: -200, duration: 1000, delay: i * 200 }}
        out:fly={{ x: 200, duration: 1000, delay: i * 200 }}
      >
        {i + 1}.{name}
      </h1>
    {/if}
  {/each}
</ul>
