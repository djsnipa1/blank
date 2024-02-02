<script>
  import 'css-doodle';
  // HELLO: you need to edit this file once to make it work!!!
  import Doodle2 from './Doodle2.svelte';
  let cssDoodle = { update: () => {} };
  $: doodle = `
		:doodle {
			@grid: 8 / 100vmax;
			height: 200px;
			width: 200px;
			
    }
@shape: circle;
		transform:
				scale(${scale}) 
				translate(@r(-5px, 5px), @r(-5px, 5px)) 
				rotate(@r(-10deg, 10deg));
		opacity: @r(.2, 1);
		background: @pick(${color}, #fff);
	`;
  $: cssDoodle.update(doodle);
  let color = 'blueviolet';
  let scale = '@rand(1,2)';
</script>

<input bind:value={scale} />
<input bind:value={color} />
<br /><br /><br />

<css-doodle bind:this={cssDoodle}> </css-doodle>
<br /><br /><br />
<Doodle2 />

<svelte:head>
  <script
    defer
    src="https://unpkg.com/css-doodle@0.8.5/css-doodle.min.js"
  ></script>
</svelte:head>

<style>
  :global(css-doodle) {
    margin: auto;
  }
</style>
