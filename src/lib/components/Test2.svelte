<script>
  import { fly } from 'svelte/transition';
  import { elasticOut } from 'svelte/easing';
  let cats = [
    { id: 1, name: 'Keyboard Cat' },
    { id: 2, name: 'Maru' },
    { id: 3, name: 'Henri The Existential Cat' }
  ];
  let visible = false;

  function spin(node, { duration, delay }) {
    return {
      delay,
      duration,
      css: (t) => {
        const eased = elasticOut(t);
        return `transform: scale(${eased}) rotate(${eased * 360}deg);`;
      }
    };
  }
</script>

<input type="checkbox" bind:checked={visible} />
<ul>
  {#each cats as { name }, i}
    {#if visible}
      <h1
        in:spin={{ duration: 1000, delay: i * 200 }}
        out:fly={{ x: 200, duration: 1000, delay: i * 200 }}
      >
        {i + 1}.{name}
      </h1>
    {/if}
  {/each}
</ul>
