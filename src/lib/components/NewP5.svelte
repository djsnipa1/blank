<script lang="ts">
	import P5, { type Sketch } from 'p5-svelte';

	type Dot = {
		x: number;
		y: number;
		speed: number;
	};

	let dots: Dot[] = [];

	const sketch: Sketch = (p5) => {
		p5.setup = () => {
			p5.createCanvas(p5.windowWidth, p5.windowHeight);
			// p5.framRate(60);

			for (let i = 0; i < 300; i++) {
				dots.push({
					x: p5.random(p5.width),
					y: p5.random(p5.height),
					speed: p5.random(1, 3) // Random speed for each dot
				});
			}
		};
		p5.draw = () => {
			p5.background(220); // Clear the screen

			p5.fill('yellow');

			// Draw an ellipse at (150, 150) with width 100 and height 50
			p5.ellipse(150, 150, 100, 50);

			for (let dot of dots) {
				dot.y -= dot.speed; // Move the dot up
				if (dot.y < 0) {
					// If the dot has reached the top of the screen
					dot.y = p5.height; // Reset its y coordinate to the bottom of the screen
				}
				p5.ellipse(dot.x, dot.y, 1); // Draw the dot
			}
		};
	};
</script>

<P5 {sketch} />
