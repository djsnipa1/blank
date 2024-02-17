<script>
	import { scale, fade } from 'svelte/transition';
	import { elasticOut } from 'svelte/easing';
	import { onMount } from 'svelte';
	import anime from 'animejs';

	let scaling = false;
	let div1, div2;
	
	onMount(setup);

    const drawLine = (targets, opts) => ({
		targets,
		scale: 10,
		...opts
	});

	function setup() {
		anime.timeline({
			easing: 'easeOutExpo',
			autoplay: true,
			loop: true
		})
		.add(drawLine(div1, { duration: 5000, scale: 10, opacity: 100}))
		.add(drawLine(div2, { duration: 3000,  scale: 10, opacity: 100 }))
		
	}
	// https://www.youtube.com/watch?v=ePFw62HISRI
	// https://rodneylab.com/using-svelte-each-blocks/
	/*	function customScale() {
			return {
				duration: 5000,
				easing: elasticOut,
				css: (t, u) => `transform: scale(${t * 800}%)` //`translateX(${u *  100}%)`
			};
		}
    */
let options = {
	id: 1,

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
 <!--  {#if scaling} -->
		<div id="div1" bind:this={div1}
			class="absolute mx-auto h-20 w-20 rounded-[100%] border-4 border-white opacity-0"
		></div>
		<div id="div2" bind:this={div2}
		    class="absolute mx-auto h-20 w-20 rounded-[100%] border-4 border-white opacity-0"
		></div>
	<!--{/if} -->
	<!--
	{#each circle as { borderWidth, scale, opacity }, index }
	<div id="div{index}" 
	    class:borderWidth={borderWidth}
		></div>
	{/each}
	-->
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
