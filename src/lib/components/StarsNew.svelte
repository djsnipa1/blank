<!-- RandomBoxes.svelte -->
<script>
import { onMount } from 'svelte'
import { flip } from 'svelte/animate'
  import { fly } from 'svelte/transition';
  import { quintOut } from 'svelte/easing';

  const boxCount =   100; // Number of boxes to create
  let boxes = [];

  // Function to generate a random position within the window bounds
  function getRandomPosition(maxDimension) {
    return Math.floor(Math.random() * maxDimension);
  }

  // Generate random boxes with random positions and dimensions
  function createBoxes() {
    boxes = Array.from({ length: boxCount }, () => ({
      id: Math.random(), // Unique identifier for each box
      left: getRandomPosition(window.innerWidth), // Random x position
      top: getRandomPosition(window.innerHeight), // Random y position
      //width: Math.floor(Math.random() *   100), // Random width between   0 and   100
  //    height: Math.floor(Math.random() *   100) // Random height between   0 and   100
    }));
  }

  // Call the function to generate the boxes when the component mounts
  onMount(createBoxes);
</script>

<div class="container" animate:flip={{ duration: 10000 }} style="transform: translateY(50%)">
  {#each boxes as box (box.id)}
    <div
      class="box"
      style="left: {box.left}px; top: {box.top}px;"
    >
      <!-- Content can go here -->
    </div>
  {/each}
</div>

<style>
  .container {
    position: relative; /* Or absolute, depending on your layout */
  }

  .box {
    position: absolute;
    background-color: #fff;
    width: 1px;
    height: 1px;
  }
</style>
