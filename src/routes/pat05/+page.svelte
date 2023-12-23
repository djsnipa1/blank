<script>
  import { onMount, onDestroy } from 'svelte';
  let sketch;
  let chad = 0;

  export let slotSize = 30;
  let niterations = 5;

  let marginX;
  let marginY;

  function handleTouchMove(event) {
    event.preventDefault();
  }

  onMount(() => {
    import('p5')
      .then((module) => {
        const p5 = module.default;

        sketch = new p5((p) => {
          p.setup = () => {
            var c = p.createCanvas(p.windowWidth, p.windowHeight);
            c.mousePressed(doStuff);
            p.background(0);
            p.pixelDensity();

            marginX =
              p.windowWidth - p.int(p.windowWidth / slotSize) * slotSize;
            marginY =
              p.windowHeight - p.int(p.windowHeight / slotSize) * slotSize;
          };

          p.draw = () => {
            p.background(0);
            p.noFill();
            p.stroke(255);
            p.strokeWeight(2);

            for (
              let i = marginX / 2 + slotSize / 2;
              i < p.width - marginX / 2;
              i += slotSize
            ) {
              for (
                let j = marginY / 2 + slotSize / 2;
                j < p.height - marginY / 2;
                j += slotSize
              ) {
                // code here
                let xOffset = p.map(p.mouseX, 0, p.width, -0.5, 0.5);
                let yOffset = p.map(p.mouseY, 0, p.height, -0.5, 0.5);
                p.line(
                  i + xOffset * slotSize,
                  j + yOffset * slotSize,
                  i - slotSize * 0.5,
                  j - slotSize * 0.5
                );
                p.line(
                  i + xOffset * slotSize,
                  j + yOffset * slotSize,
                  i + slotSize * 0.5,
                  j + slotSize * 0.5
                );
                p.line(
                  i + xOffset * slotSize,
                  j + yOffset * slotSize,
                  i + slotSize * 0.5,
                  j - slotSize * 0.5
                );
                p.line(
                  i + xOffset * slotSize,
                  j + yOffset * slotSize,
                  i - slotSize * 0.5,
                  j + slotSize * 0.5
                );
              }
            }
          };

          function doStuff() {
            slotSize = p.random(10, 200);

            marginX =
              p.windowWidth - p.int(p.windowWidth / slotSize) * slotSize;
            marginY =
              p.windowHeight - p.int(p.windowHeight / slotSize) * slotSize;
          }

          p.windowResized = () => {
            p.resizeCanvas(p.windowWidth, windowHeight);
            marginX = windowWidth - p.int(p.windowWidth / slotSize) * slotSize;
            marginY =
              p.windowHeight - p.int(p.windowHeight / slotSize) * slotSize;
          };
        }, '#container');
      })
      .catch((err) => {
        console.error('Failed to load p5', err);
      });
  });

  onDestroy(() => {
    // Make sure to remove the canvas when the component is
    if (sketch) {
      sketch.remove();
    }
  });
</script>

<!--
<h2 class="text-3xl text-orange-500"><a href="/sample">sample</a></h2>

<label>
  Width
  <input type="range" bind:value={slotSize} min="1" max="200" step="1.00" />
  {slotSize}
</label>

<label>
  Height
  <input type="range" bind:value={marginX} min="100" max="1000" step="0.01" />
  {marginX}
</label>
-->

{@debug chad}
<div id="container" on:touchmove={handleTouchMove} />

<style>
  #container {
    width: '100%';
    height: '100%';
  }
</style>
