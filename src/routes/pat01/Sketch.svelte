<script lang="ts">
  import P5, { type Sketch } from 'p5-svelte';

  import { onMount } from 'svelte';
  let gui;

  /*onMount(async () => {
    const dat = await import('dat.gui');
    gui = new dat.GUI();
    // add your controls here
  });
  */
  export let slotSize;
  console.log(slotSize);
  slotSize = Math.round(slotSize);
  console.log(slotSize);
  let marginX;
  let marginY;

  const sketch: Sketch = (p5) => {
    p5.setup = () => {
      p5.createCanvas(p5.windowWidth, p5.windowHeight);
      p5.background(180);
      p5.pixelDensity(1);

      marginX = p5.windowWidth - p5.int(p5.windowWidth / slotSize) * slotSize;
      marginY = p5.windowHeight - p5.int(p5.windowHeight / slotSize) * slotSize;

      // code here
    };

    p5.draw = () => {
      p5.background(180);

      for (
        let i = marginX / 2 + slotSize / 2;
        i < p5.width - marginX / 2;
        i += slotSize
      ) {
        for (
          let j = marginY / 2 + slotSize / 2;
          j < p5.height - marginY / 2;
          j += slotSize
        ) {
          // code here
          p5.fill(255);
          // p5.rect(i, j, slotSize, slotSize);
          p5.fill(255);
          p5.ellipse(i, j, slotSize, slotSize);
        }
      }
    };

    p5.mousePressed = () => {
      slotSize = p5.random(10, 200);
      marginX = p5.windowWidth - p5.int(p5.windowWidth / slotSize) * slotSize;
      marginY = p5.windowHeight - p5.int(p5.windowHeight / slotSize) * slotSize;
    };

    p5.windowResized = () => {
      p5.resizeCanvas(p5.windowWidth, p5.windowHeight);
      marginX = p5.windowWidth - p5.int(p5.windowWidth / slotSize) * slotSize;
      marginY = p5.windowHeight - p5.int(p5.windowHeight / slotSize) * slotSize;
    };
  };
</script>

<input
  bind:value={slotSize}
  placeholder="100"
  class="absolute top-10 left-10 z-0"
/>

<p>Hello {slotSize || 100}!</p>

<P5 {sketch} />

<style>
</style>
