<script>
  import { isOverlayOpen } from '$lib/stores/OverlayStore.js';
</script>

<h1>Overlay</h1>
{$isOverlayOpen}

<button
  class="bg-purple-700 text-purple-100 m-4 p-4 text-2xl"
  on:click={() => {
    isOverlayOpen.set(true);
  }}>Open Overlay</button
>
