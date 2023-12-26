<script>
  import { fly, fade } from 'svelte/transition';
  
  let showSidePanel, width
	function toggleSidePanel() {
		showSidePanel = !showSidePanel
	}
</script>
<div class="mesh w-20 h-20"></div>
<div>
	<button class="p-3 w-[200px] h-30 bg-green-400" on:click={toggleSidePanel}>
		Show side panel
	</button>
</div>


<svelte:head>
  <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css"
  />
</svelte:head>

<!-- component -->

{#if showSidePanel}
<aside class="relative z-10">
<div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" transition:fade>
<div bind:clientWidth={width} transition:fly={{ x: -width }} class="m-auto flex h-[95%] flex-col overflow-y-scroll bg-white py-6 shadow-xl">

<div class="bg-blue-600">
  <span
    class="absolute text-white text-4xl top-5 left-4 cursor-pointer"
    on:click={toggleSidePanel}
  >
    
    <i class="bi bi-filter-left px-2 bg-gray-900 rounded-md"></i>
  </span>

  <div
    class="sidebar fixed top-0 bottom-0 lg:left-0 p-2 w-[300px] overflow-y-auto text-center bg-gray-900">
    <div class="text-gray-100 text-xl">
      <div class="p-2.5 mt-1 flex items-center">
        <i class="bi bi-app-indicator px-2 py-1 rounded-md bg-blue-600"></i>
        <h1 class="font-bold text-gray-200 text-[15px] ml-3">TailwindCSS</h1>
        <i
          class="bi bi-x cursor-pointer ml-28 lg:hidden" on:click={toggleSidePanel}>
      </div>
      <div class="my-2 bg-gray-600 h-[1px]"></div>
    </div>
    
    <!-- 🔎 Search box
    <div
      class="p-2.5 flex items-center rounded-md px-4 duration-300 cursor-pointer bg-gray-700 text-white"
    >
      <i class="bi bi-search text-sm"></i>
      <input
        type="text"
        placeholder="Search"
        class="text-[15px] ml-4 w-full bg-transparent focus:outline-none"
      />
    </div>
    -->
    
    <!-- 🔗 Links
      <li><a href="/gallery">Gallery Page</a></li>
  <li><a href="/js30/1">JS30 - 1</a></li>
  <li><a href="/pat01">Patterns - 01</a></li>
  <li><a href="/pat02">Patterns - 02</a></li>
  <li><a href="/pat03">Patterns - 03</a></li>
  <li><a href="/pat04">Patterns - 04</a></li>
  <li><a href="/pat05">Patterns - 05</a></li>
  <li><a href="/pat06">Patterns - 06</a></li>
  <li><a href="/range">Range Component</a></li>
  <li><a href="/menu">Menu Test</a></li>
  <li><a href="/patterns/code">Code Patterns</a></li>
</ul>
-->
    <div
      class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300 cursor-pointer hover:bg-blue-600 text-white"
    >
      <i class="bi bi-house-door-fill"></i>
      <span class="text-[15px] ml-4 text-gray-200 font-bold"><a href="/">Home</a></span>
    </div>
    <div
      class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300 cursor-pointer hover:bg-blue-600 text-white"
    >
      <i class="bi bi-bookmark-fill"></i>
      <span class="text-[15px] ml-4 text-gray-200 font-bold"><a href="/gallery">Gallery Page</a></span>
    </div>
    <div class="my-4 bg-gray-600 h-[1px]"></div>
    
    <!-- ⤵️ Dropdown -->
    <div
      class="transition duration-1000 hover:bg-yellow-500 p-2.5 mt-3 flex items-center rounded-md px-4 duration-300 cursor-pointer hover:bg-blue-600 text-white"
      onclick="dropdown()"
    >
      <i class="bi bi-chat-left-text-fill"></i>
      <div class="flex justify-between w-full items-center">
        <span class="text-[15px] ml-4 text-gray-200 font-bold">P5.js Patterns</span>
      <span class="text-sm rotate-180" id="arrow">
          <i class="bi bi-chevron-down"></i>
        </span>
      </div>
    </div>
    <div
      
      class="text-left text-sm mt-2 w-4/5 mx-auto text-gray-200 font-bold"
      id="submenu"
    >
    <!-- PATTERNS EACH BLOCK -->
      {#each {length: 6} as _, i}
        <h1 class="cursor-pointer p-2 hover:bg-blue-600 rounded-md mt-1">
          Patterns - {i + 1}
        </h1>
      {/each}
    </div> 
    <div
      class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300 cursor-pointer hover:bg-blue-600 text-white"
    >
      <i class="bi bi-box-arrow-in-right"></i>
      <span class="text-[15px] ml-4 text-gray-200 font-bold">Logout</span>
    </div>
  </div>
</div>
</div>
</div>
</aside>
{/if}


<style>
  .mesh {
  	
        background-color: rgb(15, 23, 42);
        background-image: radial-gradient(at 67% 79%, rgb(146, 64, 14) 0, transparent 35%), radial-gradient(at 71% 51%, rgb(7, 89, 133) 0, transparent 51%), radial-gradient(at 72% 66%, rgb(202, 138, 4) 0, transparent 62%), radial-gradient(at 84% 17%, rgb(231, 229, 228) 0, transparent 35%), radial-gradient(at 22% 15%, rgb(219, 39, 119) 0, transparent 26%), radial-gradient(at 29% 21%, rgb(64, 64, 64) 0, transparent 6%);
      
  }
</style>
