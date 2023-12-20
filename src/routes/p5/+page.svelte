<script>
  import { onMount, onDestroy } from "svelte";
  let sketch;
  let chad = 0;

  export let slotSize = 100;
  console.log(slotSize);
  // slotSize = Math.round(slotSize);
  console.log(slotSize);
  let marginX;
  let marginY;

  onMount(() => {
    import("p5")
      .then((module) => {
        const p5 = module.default;

        sketch = new p5((p) => {
          p.setup = () => {
            var c = p.createCanvas(p.windowWidth, p.windowHeight);
            c.mousePressed(doStuff);
            p.background(180);
            p.pixelDensity(1);

            marginX =
              p.windowWidth - p.int(p.windowWidth / slotSize) * slotSize;
            marginY =
              p.windowHeight - p.int(p.windowHeight / slotSize) * slotSize;
          };

          p.draw = () => {
            p.background(180);
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
                // p.fill(255);
                // p.rect(i, j, slotSize, slotSize);
                p.fill(255);
                p.ellipse(i, j, slotSize, slotSize);
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

          /*    p.mousePressed = () => {
            
          }; */

          p.windowResized = () => {
            p.resizeCanvas(p.windowWidth, windowHeight);
            marginX = windowWidth - p.int(p.windowWidth / slotSize) * slotSize;
            marginY =
              p.windowHeight - p.int(p.windowHeight / slotSize) * slotSize;
          };
        }, "#container");
      })
      .catch((err) => {
        console.error("Failed to load p5", err);
      });
  });

  onDestroy(() => {
    // Make sure to remove the canvas when the component is
    if (sketch) {
      sketch.remove();
    }
  });
</script>

{@debug chad}
<div id="container" />

<style>
  #container {
    width: "100%";
    height: "100%";
  }
</style>
