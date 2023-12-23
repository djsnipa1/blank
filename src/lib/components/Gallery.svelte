<script>
  import Gallery from 'svelte-image-gallery';

  let scaleFactor = 1;

  function handleClick() {
    scaleFactor = scaleFactor === 1 ? 1.5 : 1;
  }

  function HandleClick(e) {
    console.log(
      `src: ${e.detail.src}, alt: ${e.detail.alt}, loading: ${e.detail.loading}, class: ${e.detail.class}`
    );
    console.log(JSON.stringify(e));
  }
</script>

<button on:click={handleClick}>
  {#if scaleFactor === 1}
    Click to scale up
  {:else}
    Click to scale down
  {/if}
</button>

<div
  class="box {scaleFactor === 1 ? '' : 'scaled'}"
  on:click={handleClick}
></div>

<div class="m-4">
  <Gallery on:click={HandleClick} gap="10" maxColumnWidth="200">
    {#each Array(10) as _, index (index)}
      <img
        src="https://source.unsplash.com/random?{index}&q=0&colorquant=3"
        class="danger rounded-lg shadow-md transform transition-all hover:scale-150 hover:duration-[1500ms] hover:ease-out"
      />
    {/each}
  </Gallery>
</div>

<style lang="postcss">
  uiy
/*	:global(img) {
		opacity: 1;
		transition: all 0.2s;
	}
	:global(img):hover {
		opacity: 1;
		transform: scale(2.75);
		max-width: 100%;
	}
*/
	.danger {
    @apply border-2 border-red-600 hover:border-orange-500  ring-red-500;
  }
  .primary {
    @apply bg-blue-700 hover:bg-blue-600 ring-blue-400;
  }

  .box {
    width: 100px;
    height: 100px;
    background-color: blue;
    transition: transform 0.5s ease-in-out;
  }

  .box.scaled {
    transform: scale(1.5);
  }
</style>
