<script>
  import { brightOrange } from 'gruvbox';
  import Duck from '$lib/components/Duck.svelte';
  import Saw from '$lib/components/Saw.svelte';
</script>

<Saw size={128} class="spin" />

<Duck size={128} />

<style>
  svg {
    display: inline-block;
    animation: rotate 1s linear infinite;
  }

  @keyframes rotate {
    to {
      transform: rotate(360deg);
    }
  }
</style>
