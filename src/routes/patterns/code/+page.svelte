<code>
  <script lang="ts">
    import P5, { type Sketch } from 'p5-svelte';

    let slotSize = 100;
    let marginX;
    let marginY;

    const sketch: Sketch = (p5) => {
      p5.setup = () => {
        p5.createCanvas(p5.windowWidth, p5.windowHeight);
        p5.background(180);
        p5.pixelDensity(1);

        marginX = p5.windowWidth - p5.int(p5.windowWidth / slotSize) * slotSize;
        marginY =
          p5.windowHeight - p5.int(p5.windowHeight / slotSize) * slotSize;

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
          }
        }
      };

      p5.mousePressed = () => {
        slotSize = p5.random(10, 200);
        marginX = p5.windowWidth - p5.int(p5.windowWidth / slotSize) * slotSize;
        marginY =
          p5.windowHeight - p5.int(p5.windowHeight / slotSize) * slotSize;
      };

      p5.windowResized = () => {
        p5.resizeCanvas(p5.windowWidth, p5.windowHeight);
        marginX = p5.windowWidth - p5.int(p5.windowWidth / slotSize) * slotSize;
        marginY =
          p5.windowHeight - p5.int(p5.windowHeight / slotSize) * slotSize;
      };
    };
  </script>

  <P5 {sketch} />
</code>
