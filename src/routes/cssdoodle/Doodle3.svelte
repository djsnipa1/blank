<script>
  import { onMount } from 'svelte';
  //import CSSDoodle from 'css-doodle';
  import 'css-doodle';

  let grid = '@grid: 10/320px';

  let container;
  //let doodle = CSSDoodle`
  // @grid: 10 / 320px;
  //`;
  let doodle = `
${grid};
`;
  onMount(() => {
    container.appendChild(doodle);
  });
</script>

<css-doodle>
  {`:doodle {
 @grid: 3 / 1fr;
 background: @pick([#ffcc00, #ff3300, #00ccff]);
 }
 `}
</css-doodle>

<input bind:value={grid} />

<div bind:this={container}></div>
