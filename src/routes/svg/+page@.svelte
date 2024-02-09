<script>
  import { draw } from 'svelte/transition';
  import { quintOut, quintInOut } from 'svelte/easing';

  let condition = false;
  function workGodDamnIt() {
    console.log('push clicked');
    condition = !condition;
  }
</script>

<div
  class="min-h-screen flex flex-col justify-center items-center z-[1] bg-amber-500"
>
  <button
    class="btn sm:btn-sm md:btn-md lg:btn-lg z-[100]"
    on:click={workGodDamnIt}
  >
    {#if condition}
      Hide SVG
    {:else}
      Show SVG
    {/if}
  </button>

  <svg
    class="w-full pt-4 mx-auto"
    xmlns="http://www.w3.org/2000/svg"
    xmlns:vectornator="http://vectornator.io"
    xml:space="preserve"
    stroke-miterlimit="10"
    style="fill-rule:nonzero;clip-rule:evenodd;stroke-linecap:round;stroke-linejoin:round"
    viewBox="0 0 812 375"
  >
    {#if condition}
      <g fill="none" stroke="#000" stroke-width="6.1">
        <path
          in:draw={{ duration: 1500, easing: quintOut }}
          out:draw={{ duration: 1500, easing: quintInOut, delay: 1200 }}
          d="M291 145c3-15 46-38 56-63 15-38-43-14-53-7a581 581 0 0 0-143 161c-11 19-29 42-21 63 12 27 69-7 81-15 69-44 139-96 194-156l26-34c6-8 16-28 6-29-12-2-38 20-42 23-41 34-75 76-107 117a1449 1449 0 0 0-63 90c-1 1-2 5 0 5 16 1 33-22 40-29 23-22 51-57 84-66 13-3 1 30 8 32 29 7 57-11 92 1"
        />
        <path
          in:draw={{ duration: 1500, easing: quintOut, delay: 1200 }}
          out:draw={{ duration: 1500, easing: quintInOut }}
          d="M488 82v-6c-10 21-15 36-28 58-29 44-55 91-84 135l-15 21c-1 1-2 5-3 4-10-6 7-21 13-31 14-22 30-43 45-65 36-53 55-93 117-118 14-5 32-12 47-11 21 1 13 21 5 31-26 31-62 48-98 62l-40 14-20 4-3 1c38 0 120-46 138 12 15 49-63 79-93 91a535 535 0 0 1-111 29c-11 2-39 1-33-9 14-25 67-43 91-53 64-26 136-37 205-45 11-1 63-12 63 13"
        />
      </g>
    {/if}
  </svg>
</div>

<style>
  :global(body) {
    @apply bg-amber-600;
  }
  svg {
    display: block;
    z-index: 200;
  }
</style>
