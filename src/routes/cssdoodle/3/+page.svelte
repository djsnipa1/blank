<script>
  import { onMount } from 'svelte';
  import {CSSDoodle} from 'css-doodle';
  import Doodle2 from './doodle2.svelte';
  import Doodle3 from './doodle3.svelte';

  import { dark0, brightRed, faded, bright } from 'gruvbox';
  // document.body.style.background = dark0
  console.log(brightRed); //> #fb4934
  console.log(faded.green); //> #79740e

  let cssDoodle;
  //$: background =
  $: background = bright.yellow;

  $: hue = 100;
  $: plus = 0.5;
  $: row = '@row()';
  $: col = '@col()';
  $: point1 = 100;

  $: doodle = `
		:doodle {
			@grid: 25 / 100vw;
		}
		
	//	--hue: calc(100 + .5 * @row() * @col());
		--hue: calc(${hue} + ${plus} * ${row} * ${col});
	//	background: hsla(var(--hue), 100%, 70%, @r(.1, .9));
		background: @pick(${bright.red}, ${bright.green}, ${bright.yellow}, ${bright.blue}, ${bright.purple}, ${bright.aqua}, ${bright.orange});
	opacity: @r(0.3, 0.9);
			
	//	clip-path: ellipse(100% 100% at @pick('0 0', '0 100%', '100% 0', '100% 100%'));
		clip-path: ellipse(${point1}% 100% at @pick('0 0', '0 100%', '100% 0', '100% 100%'));
		
	//animation: m 1s cubic-bezier(0.175, 0.885, 0.320, 1.275) forwards;
	
@keyframes m {
  0% {
    transform: rotateY(-100deg);
    transform-origin: right;
    opacity: 0;
  }
  100% {
    transform: rotateY(0);
    transform-origin: right;
    opacity: 1;
  }
}





	`;

  $: if (cssDoodle) {
    cssDoodle.update(doodle);
  }

  let color = 'blueviolet';
  let scale = '@rand(1,2)';

  onMount(() => {
    setTimeout(() => {
      cssDoodle.update(doodle);
    });
  });
</script>

<input bind:value={hue} />
<input bind:value={hue} type="range" min="0" max="360" />

<input bind:value={plus} />
<input bind:value={row} />
<input bind:value={col} />
<input bind:value={point1} type="range" min="0" max="100" />
<br /><br /><br />

<css-doodle bind:this={cssDoodle} click-to-update></css-doodle>
<br /><br /><br />

<Doodle2 />

<Doodle3 />

<!--
<svelte:head>
    <script defer src="https://unpkg.com/css-doodle@0.8.5/css-doodle.min.js"></script>
</svelte:head>
-->

<style>
  :global(css-doodle) {
    margin: auto;
  }
</style>
