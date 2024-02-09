<script>
  import gruvbox from 'gruvbox';
  import { onMount } from 'svelte';

  $: outerWidth = 0
	$: innerWidth = 0
	$: outerHeight = 0
	$: innerHeight = 0

  let canvas;
  let ctx;

  onMount(() => {
    //canvas.width = window.innerWidth;
    canvas.width = outerWidth;
    //canvas.height = window.innerHeight;
    canvas.height = outerHeight;
    ctx = canvas.getContext('2d');
    ctx.globalCompositeOperation = 'destination-over';
    console.log('Canvas dimensions:', canvas.width, canvas.height);
    console.log(gruvbox.dark0);
    let number = 0;
    let scale = 5;
    let hue = Math.random() * 360;

    // Draw the circle at new coordinates
    // let positionX = canvas.width / 2; // center of the canvas horizontally
    // let positionY = canvas.height / 2; // center of the canvas vertically

    function drawFlower() {
      let angle = number * 4;
      let radius = scale * Math.sqrt(number);
      let positionX = radius * Math.sin(angle) + canvas.width / 2;
      let positionY = radius * Math.cos(angle) + canvas.height / 2;

      ctx.beginPath();
      ctx.arc(positionX, positionY, number * 0.1, 0, 2 * Math.PI);
      ctx.closePath();
      ctx.fillStyle = `hsl(${hue}, 100%, 50%)`;
      ctx.fill();
      ctx.strokeStyle = 'black';
      ctx.lineWidth = 2;
      ctx.stroke();

      number++;
      hue += 1.5;
    }

    function animate() {
      // ctx.clearRect(0, 0, canvas.width, canvas.height);
      drawFlower();
      if (number > 300) return;
      requestAnimationFrame(animate);
    }
    animate();
  });
</script>

<svelte:window bind:innerWidth bind:outerWidth bind:innerHeight bind:outerHeight />

{outerWidth}, {outerHeight}

<canvas bind:this={canvas} id="canvas1"></canvas>

<style>
  #canvas1 {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
  
  }
  
  :global(body) {
      @apply bg-stonewall-900;
  }
</style>
