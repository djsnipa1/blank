<script>
  import '../app.scss';
  import '../app.postcss';
  import ThemeSelect from '$lib/components/ThemeSelect.svelte';
  import Links from '$lib/links.js';
  import Navbar from '$lib/components/Navbar.svelte';
  // Supports weights 100-900
  import '@fontsource-variable/big-shoulders-display';
  // Supports weights 100-900
  import '@fontsource-variable/big-shoulders-inline-display';
</script>

<slot />

<style lang="postcss">
  :global(body) {
    @apply bg-stonewall-900 min-h-screen;
  }
</style>
