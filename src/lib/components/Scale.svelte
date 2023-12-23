<script>
  let scaleFactor = 1;

  function handleClick() {
    scaleFactor = scaleFactor === 1 ? 1.5 : 1;
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

<style>
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
