<script>
  import { isOverlayOpen } from '$lib/stores/OverlayStore.js';
  import Overlay from '$lib/components/Overlay.svelte';
</script>

{#if $isOverlayOpen}
  <Overlay>
    <p>this should be open</p>
  </Overlay>
{/if}

<slot />

<style>
  :global(body2) {
    --s: 84px; /* control the size*/
    --c1: #f2f2f2;
    --c2: #cdcbcc;
    --c3: #999999;

    --_g: 0 120deg, #0000 0;
    background: conic-gradient(
        from 0deg at calc(500% / 6) calc(100% / 3),
        var(--c3) var(--_g)
      ),
      conic-gradient(
        from -120deg at calc(100% / 6) calc(100% / 3),
        var(--c2) var(--_g)
      ),
      conic-gradient(
        from 120deg at calc(100% / 3) calc(500% / 6),
        var(--c1) var(--_g)
      ),
      conic-gradient(
        from 120deg at calc(200% / 3) calc(500% / 6),
        var(--c1) var(--_g)
      ),
      conic-gradient(
        from -180deg at calc(100% / 3) 50%,
        var(--c2) 60deg,
        var(--c1) var(--_g)
      ),
      conic-gradient(
        from 60deg at calc(200% / 3) 50%,
        var(--c1) 60deg,
        var(--c3) var(--_g)
      ),
      conic-gradient(
        from -60deg at 50% calc(100% / 3),
        var(--c1) 120deg,
        var(--c2) 0 240deg,
        var(--c3) 0
      );
    background-size: calc(var(--s) * 1.732) var(--s);
  }

  :global(body3) {
    background-color: #161819;
    opacity: 1;
    background-image: repeating-radial-gradient(
        circle at 0 0,
        transparent 0,
        #161819 8px
      ),
      repeating-linear-gradient(#2e2a2955, #2e2a29);
  }

  .carbon {
    background:
      linear-gradient(27deg, #151515 5px, transparent 5px) 0 5px,
      linear-gradient(207deg, #151515 5px, transparent 5px) 10px 0px,
      linear-gradient(27deg, #222 5px, transparent 5px) 0px 10px,
      linear-gradient(207deg, #222 5px, transparent 5px) 10px 5px,
      linear-gradient(90deg, #1b1b1b 10px, transparent 10px),
      linear-gradient(
        #1d1d1d 25%,
        #1a1a1a 25%,
        #1a1a1a 50%,
        transparent 50%,
        transparent 75%,
        #242424 75%,
        #242424
      );
    background-color: #131313;
    background-size: 20px 20px;
  }

  :global(body4) {
    --s: 42px; /* control the size */
    --c1: #282828;
    --c2: #1d2021;
    --c3: #3c3836;

    --_g: var(--c3) 0 120deg, #0000 0;
    background: conic-gradient(from -60deg at 50% calc(100% / 3), var(--_g)),
      conic-gradient(from 120deg at 50% calc(200% / 3), var(--_g)),
      conic-gradient(
        from 60deg at calc(200% / 3),
        var(--c3) 60deg,
        var(--c2) 0 120deg,
        #0000 0
      ),
      conic-gradient(from 180deg at calc(100% / 3), var(--c1) 60deg, var(--_g)),
      linear-gradient(
        90deg,
        var(--c1) calc(100% / 6),
        var(--c2) 0 50%,
        var(--c1) 0 calc(500% / 6),
        var(--c2) 0
      );
    background-size: calc(1.732 * var(--s)) var(--s);
  }

  :global(body5) {
    --s: 194px; /* control the size */
    --c1: #f6edb3;
    --c2: #acc4a3;

    --_l: #0000 calc(25% / 3), var(--c1) 0 25%, #0000 0;
    --_g: conic-gradient(from 120deg at 50% 87.5%, var(--c1) 120deg, #0000 0);
    background:
      var(--_g),
      var(--_g) 0 calc(var(--s) / 2),
      conic-gradient(from 180deg at 75%, var(--c2) 60deg, #0000 0),
      conic-gradient(from 60deg at 75% 75%, var(--c1) 0 60deg, #0000 0),
      linear-gradient(150deg, var(--_l)) 0 calc(var(--s) / 2),
      conic-gradient(
        at 25% 25%,
        #0000 50%,
        var(--c2) 0 240deg,
        var(--c1) 0 300deg,
        var(--c2) 0
      ),
      linear-gradient(-150deg, var(--_l)) #55897c /* third color here */;
    background-size: calc(0.866 * var(--s)) var(--s);
  }

  :global(body) {
    background-color: #290b0b;
    background-image: url('https://www.transparenttextures.com/patterns/3px-tile.png');
    /* This is mostly intended for prototyping; please download the pattern and re-host for production environments. Thank you! */
  }
</style>
