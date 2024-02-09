<script>
  import { confetti } from '@neoconfetti/svelte';
  import bright from 'gruvbox';
</script>

<div
  use:confetti={{
    colors: [
      bright.red,
      bright.green,
      bright.yellow,
      bright.blue,
      bright.purple,
      bright.aqua,
      bright.orange
    ]
  }}
  class="min-w-full flex items-center justify-center overflow-hidden"
/>
