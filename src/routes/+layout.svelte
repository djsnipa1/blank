<script>
  import '../app.scss';
  import '../app.postcss';
import ThemeSelect from '$lib/components/ThemeSelect.svelte';
  import { links } from '$lib/links.js';
</script>

<div class="bg-stonewall-800 min-h-full min-w-full">
<!--
<ThemeSelect />
-->
<div class="drawer">
  <input id="my-drawer-3" type="checkbox" class="drawer-toggle" />
  <div class="drawer-content flex flex-col">
    <!-- Navbar -->
    <div class="w-full navbar bg-stonewall-700">
      <div class="flex-none lg:hidden">
        <label
          for="my-drawer-3"
          aria-label="open sidebar"
          class="btn btn-square btn-ghost"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            class="inline-block w-6 h-6 stroke-current"
            ><path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M4 6h16M4 12h16M4 18h16"
            ></path></svg
          >
        </label>
      </div>
      <div class="flex-1 px-2 mx-2">Navbar Title</div>
      <div class="flex-none hidden lg:block lg:drawer-open">
        <ul class="menu menu-horizontal">
          <!-- Navbar menu content here -->
          <li><a>Navbar Item 1</a></li>
          <li><a>Navbar Item 2</a></li>
        </ul>
      </div>
    </div>
    <!-- Page content here -->
    <slot />
  </div>
  <div class="drawer-side lg:drawer-open">
    <label for="my-drawer-3" aria-label="close sidebar" class="drawer-overlay"
    ></label>
    <ul class="menu mt-16 p-4 w-50 min-h-full bg-stonewall-600">
      {#each links as link, index}
        <li key={index}>
        <a href={link.path} class="transition-all hover:text-orange-400 hover:bg-stonewall-800">{link.name}</a>
        </li>
      {/each}
      <!-- Sidebar content here -->
      <li><a>Sidebar Item 1</a></li>
      <li><a>Sidebar Item 2</a></li>
    </ul>
  </div>
</div>
</div>

<style lang="postcss">
  
</style>
