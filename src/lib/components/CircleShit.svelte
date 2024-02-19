<script>
	import { scale, fade } from 'svelte/transition';
	import { elasticOut } from 'svelte/easing';

	let scaling = false;
	function customScales() {
		return {
			duration: 5000,
			easing: elasticOut,
			css: (t, u) => `transform: scale(${t * 800}%)` //`translateX(${u *  100}%)`
		};
	}
</script>

<div class="background flex min-h-full min-w-full items-center justify-center">
	<button
		on:click={() => {
			scaling = !scaling;
		}}
		class="btn">Scale Bitch</button
	>
	<!-- Your component content goes here -->
	{#if scaling}
	{#each $items as item (item.id)}
		<div id={item.id} 
			class="absolute mx-auto h-20 w-20 rounded-[100%] border-4 border-white"
			animate:customScales={{delay: 0, duration: 3000, easing: elasticOut}}
		></div>
	{/each}
		<div
			class="absolute mx-auto h-20 w-20 rounded-[100%] border-4 border-white"
			animate:customScales={{delay: 1000, duration: 5000, easing: elasticOut}}
		></div>
	{/if}
</div>

<style>
	.background {
		position: absolute;
		height: 100%;
		width: 100%;
		top: 0;
		left: 0;
		background-color: #282828;
		/* background-color: #d2ff57; */
		background-image: url('https://www.transparenttextures.com/patterns/3px-tile.png');
		background-repeat: repeat;
		background-size: auto;
		z-index: -1; /* Places the background behind the content */
	}
</style>
