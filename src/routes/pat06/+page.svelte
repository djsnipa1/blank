<script>
  import { onMount, onDestroy } from 'svelte';
  let sketch;
  let chad = 0;

  export let slotSize = 30;
  export let nteration = 5;

  let marginX;
  let marginY;

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
                for (
                  let k= slotSize; 
                  k > 0; 
                  k = k - slotSize / nteration
                ) {
                  let xOffset = p.map(p.mouseX, 0, p.width, -0.5, 0.5);
                let yOffset = p.map(p.mouseY, 0, p.height, -0.5, 0.5);
                  p.ellipse(
                    i + xOffset * (slotSize - k),
                    j + yOffset * (slotSize - k),
                    k, k
                  )
                }
              }
            }
          };

          function doStuff() {
            slotSize = p.random(10, 200);
            nteration = p.int(p.random(2, 20))

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


<h2 class="text-3xl text-orange-500"><a href="/sample">sample</a></h2>

<label class="flex justify-center display-block">
  slotSize
  <input type="range" bind:value={slotSize} min="10" max="200" step="0.1" class="w-2/3 h-4 bg-amber-400 appearance-none border-4 border-slate-600 focus:outline-none"/>
  {slotSize}
</label>

<input type="range" min="0" max="100" value="40" class="w-2/3 h-[20px] bg-pink-500  border-none" />

<label>
  nteration
  <input type="range" bind:value={nteration} min="2" max="20" step="1.00" />
  {nteration}
</label>
<input type="range" min="0" max="100" value="40" class="range range-warning" />

{@debug chad}
<div id="container" />

<style>
  #container {
    width: '100%';
    height: '100%';
  }
  label {
    color: white;
    display: block;
  }
</style>
