

<script>
	import { scale, fade } from 'svelte/transition';
	import { browser } from '$app/environment';
	import { elasticOut } from 'svelte/easing';
	import { onMount } from 'svelte';
	import anime from 'animejs';

//	let scaling = false;
	let div1, div2, div3, w, h, vw, vh, r, divWidth, divHeight, scaleFinal;
	let style, currentWidth, currentHeight, desiredHeight, desiredWidth, scaleX, scaleY;

let circleMask, mask;

$: scaleFinal
$: divWidth

if (browser) {

vw = window.innerWidth; // viewport width
vh = window.innerHeight; // viewport height

if (vw > vh) {
  console.log("The viewport width is larger than the height");
		 scaleFinal = vw / parseFloat(divWidth);
} else if (vh > vw) {
  console.log("The viewport height is larger than the width");
		 scaleFinal = vh / parseFloat(divWidth);
} else {
  console.log("The viewport width and height are equal");
		 scaleFinal = vh / parseFloat(divWidth);
}
console.log(scaleFinal)
}

	onMount(setup);

  const drawLine = (targets, opts) => ({
		targets,
		scale: 9.5,
	  	opacity: 0,
		duration: 1500,
		...opts
	});

	function setup() {
		anime.timeline({
			easing: 'easeOutSine',
			autoplay: true,
			loop: true
		})
		.add(drawLine(div1, { scale: 20, opacity: 80 }), 0)
		.add(drawLine(div2, { duration: 1250 }), 300)
		.add({ targets: div3, scale: 7, opacity: 0, duration: 1750 }, 700)
		.add({
  targets: circleMask,
  /*width: '200%', // Final width of the circle mask
  height: '200%', */
  scale: '200%',
  duration:  2000, // Duration of the animation in milliseconds
  easing: 'easeOutQuad'// Easing function for the animation
}, 50)
		.add({
  targets: mask,
  width: '100%',
  height: '100%',
  duration:  2000,
  easing: 'easeOutQuad'
}, 150)
		
	}





/*
function getScale() {
	currentWidth = parseFloat(divWidth); // Convert to float to remove 'px' from the end
	currentHeight = parseFloat(divHeight); // Convert to float to remove 'px' from the end
	
		//desired = rad; // Example value
     //desiredHeight =  300; // Example value
	
	// Calculate scale factor
	scaleX = desired / currentWidth;
	scaleY = desiredHeight / currentHeight;
}
 
*/

	// https://www.youtube.com/watch?v=ePFw62HISRI
	// https://rodneylab.com/using-svelte-each-blocks/
	/*	function customScale() {
			return {
				duration: 5000,
				easing: elasticOut,
				css: (t, u) => `transform: scale(${t * 800}%)` //`translateX(${u *  100}%)`
pl			};
		}
    */
   // let suck
  
</script>


<!--
{#if w > width || h > height}
  <p>The element is larger than the viewport</p>
{/if}
-->

<div id="suck" class="border-pink-500 border" bind:clientWidth={w} bind:clientHeight={h}>
	<!--<span style="font-size: {size}px" contenteditable>{text}</span>-->
	<span class="size">{w} x {h}px</span><br />
	{scaleFinal}<br>
	{divWidth}
</div>
<div class="background flex min-h-full min-w-full items-center justify-center">
	<button
		on:click={() => {
			scaling = !scaling;
		}}
		class="btn">Scale Bitch</button
	>
	 
 <!--  {#if scaling} -->
 <div id="div1" bind:this={div1} bind:clientWidth={divWidth} bind:clientHeight={divHeight}
			class="absolute mx-auto h-10 w-10 rounded-[100%] border-[2px] border-white opacity-50"
		></div>
		<div id="div2" bind:this={div2}
		    class="absolute mx-auto h-20 w-20 rounded-[100%] border-[2px] border-white opacity-100"
		></div>
		<div id="div3" bind:this={div3}
		    class="absolute mx-auto h-20 w-20 rounded-[100%] border-2 border-white opacity-70"
		></div>
	<!--{/if} -->
	
<!-- HTML -->
<div class="absolute mx-auto h-20 w-20 rounded-[100%] border-2 border-white opacity-70" bind:this={circleMask}></div>

<div class="mask-container">
  <div bind:this={mask} class="mask"></div>
  <!-- Your content here -->
</div>

	
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
	p {
		color: white;
	}
	
	#suck {
		width:150px;
		height: 150px;
		color: white;
	}

.circle-mask {
  position: absolute;
  /* top:  50%;
  left:  50%; */
  width:  5%; /* Initially larger than the viewport */
  height:  5%; /* Initially larger than the viewport */
  border-radius:  100%;
  background-color: white; /* This will be the revealing part */
  opacity: 50%;
  transform: translate(-50%, -50%);
}

.mask-container {
  position: relative;
  width:  300px; /* Adjust based on your needs */
  height:  300px; /* Adjust based on your needs */
  overflow: hidden; /* This is crucial to hide the content outside the mask */
}

.mask {
  position: absolute;
  top:  0;
  left:  0;
  width:  5%; /* Initially larger than the container */
  height:  5%; /* Initially larger than the container */
  background-color: white; /* Use white to reveal content */
  border-radius:  50%; /* Make it circular */
  transform: translate(-50%, -50%);
}


</style>
