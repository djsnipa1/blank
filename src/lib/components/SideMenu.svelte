<script>
import { fly } from 'svelte/transition';
	import { quintOut } from 'svelte/easing';
	
let active = false;

$: active_class = active ? 'active bg-cyan hover:bg-rebeccapurple' : '';
$: isHidden = active ? '' : 'hidden';
	
</script>



<h1 class="header"
		class:active
		class:bg-cyan={active}
		class:hover:bg-rebeccapurple={active}>
	Hello class:directive
</h1>

<h1 class="header {active_class}">Hello reactive variable</h1>

<button on:click="{() => active = !active}">Toggle</button>

<h1 class="text-4xl text-yellow-600 {isHidden}">Test</h1> 
<h1 class:hidden={active} class="text-4xl text-yellow-600">Test</h1> 

<!-- component -->
<svelte:head>
<link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css"
    />
</svelte:head>

  <div class="bg-blue-600">
    <span
      class="absolute text-white text-4xl top-5 left-4 cursor-pointer"
      on:click="{() => active = !active}">
    >
      <i class="bi bi-filter-left px-2 bg-gray-900 rounded-md"></i>
    </span>
  
    <div
    class:hidden={active}
      class="sidebar fixed top-0 bottom-0 lg:left-0 p-2 w-[300px] overflow-y-auto text-center bg-gray-900"
      transition:fly={{ duration: 800, x: !active ? -300 : 0, y: 0, opacity: 0.25, easing: quintOut }}
    >
    
      <div class="text-gray-100 text-xl">
        <div class="p-2.5 mt-1 flex items-center">
          <i class="bi bi-app-indicator px-2 py-1 rounded-md bg-blue-600"></i>
          <h1 class="font-bold text-gray-200 text-[15px] ml-3">TailwindCSS</h1>
          <i
            class="bi bi-x cursor-pointer ml-28 lg:hidden"
            on:click="{() => active = !active}"
          ></i>
        </div>
        <div class="my-2 bg-gray-600 h-[1px]"></div>
      </div>
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
      <div
        class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300 cursor-pointer hover:bg-blue-600 text-white"
      >
        <i class="bi bi-house-door-fill"></i>
        <span class="text-[15px] ml-4 text-gray-200 font-bold">Home</span>
      </div>
      <div
        class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300 cursor-pointer hover:bg-blue-600 text-white"
      >
        <i class="bi bi-bookmark-fill"></i>
        <span class="text-[15px] ml-4 text-gray-200 font-bold">Bookmark</span>
      </div>
      <div class="my-4 bg-gray-600 h-[1px]"></div>
      <div
        class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300 cursor-pointer hover:bg-blue-600 text-white"
        onclick="dropdown()"
      >
        <i class="bi bi-chat-left-text-fill"></i>
        <div class="flex justify-between w-full items-center">
          <span class="text-[15px] ml-4 text-gray-200 font-bold">Chatbox</span>
          <span class="text-sm rotate-180" id="arrow">
            <i class="bi bi-chevron-down"></i>
          </span>
        </div>
      </div>
      <div
        class="text-left text-sm mt-2 w-4/5 mx-auto text-gray-200 font-bold"
        id="submenu"
      >
        <h1 class="cursor-pointer p-2 hover:bg-blue-600 rounded-md mt-1">
          Social
        </h1>
        <h1 class="cursor-pointer p-2 hover:bg-blue-600 rounded-md mt-1">
          Personal
        </h1>
        <h1 class="cursor-pointer p-2 hover:bg-blue-600 rounded-md mt-1">
          Friends
        </h1>
      </div>
      <div
        class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300 cursor-pointer hover:bg-blue-600 text-white"
      >
        <i class="bi bi-box-arrow-in-right"></i>
        <span class="text-[15px] ml-4 text-gray-200 font-bold">Logout</span>
      </div>
    </div>

    <script type="text/javascript">
      function dropdown() {
        document.querySelector("#submenu").classList.toggle("hidden");
        document.querySelector("#arrow").classList.toggle("rotate-0");
      }
      dropdown();

      
    </script>
  </div>
 
  
  <style>
  .header {
		margin: 1em;
		padding: 1em;
		cursor: default;
	} 
	
	.active {
		color: white;
	}
	
	.bg-cyan {
		background-color: cyan;
	}
	
	.hover\:bg-rebeccapurple:hover {
		background-color: rebeccapurple;
	}
	
	
  </style>
