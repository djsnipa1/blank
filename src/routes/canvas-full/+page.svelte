
<!-- FullScreenCanvas.svelte -->
<script>
  import { browser } from '$app/environment';
  import { onMount, onDestroy } from 'svelte';
  import gruvbox from 'gruvbox';

  let canvas;
  let ctx

if (browser) {
	const resizeHandler = () => {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    // Redraw or update your canvas content here
  };

  onMount(() => {
		window.addEventListener('resize', resizeHandler);
    resizeHandler(); // Initial resize

    canvas.width = outerWidth * 2;
    //canvas.height = window.innerHeight;
    canvas.height = outerHeight * 2;
    canvas.style.width = outerWidth;
    canvas.style.height = outerHeight;
    canvas.getContext('2d').scale(2,2)
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
      let positionX = radius * Math.sin(angle) + canvas.width / 4;
      let positionY = radius * Math.cos(angle) + canvas.height / 4;

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

	onDestroy(() => {
    window.removeEventListener('resize', resizeHandler);
  });
  }
</script>

<canvas bind:this={canvas}></canvas>


<!-- FullScreenCanvas.svelte -->
<style>
  canvas {
    position: fixed; /* Fixed position to cover the entire viewport */
    top:  0;
    left:  0;
    width:  100vw; /* Viewport width */
    height: 100vh; /* Viewport height */
  }
</style>
