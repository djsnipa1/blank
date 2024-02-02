<script>
  import { fly, fade } from 'svelte/transition';
  import { expoIn, expoOut } from 'svelte/easing';
  import TailwindIcon from '~icons/logos/tailwindcss-icon';

  import TestNew from '$lib/components/TestNew.svelte';

  let dropDownHidden = true;
  let submenu;
  let arrow;
  let visible = true;

  function toggle2() {
    dropDownHidden = !dropDownHidden;
    visible = !visible;
  }

  let showSidePanel = true;
  let width;

  function toggleSidePanel() {
    showSidePanel = !showSidePanel;
  }

  const menuItems = [
    {
      path: '/',
      label: 'Home',
      icon: 'bi-house-door'
    },
    {
      path: '/search',
      label: 'Search'
      //	icon: Search
    },
    {
      path: '/playlists',
      label: 'Playlists'
      //	icon: ListMusic
    }
  ];
</script>

<div class="mesh w-full h-screen absolute z-[-1]"></div>
<div>
  <button class="p-3 w-[200px] h-30" on:click={toggleSidePanel}>
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
{#if !showSidePanel}
  <div
    class="absolute text-white text-4xl top-5 left-4 cursor-pointer"
    transition:fly={{ x: 100, opacity: 0.5, duration: 250 }}
    on:click={toggleSidePanel}
  >
    <i class="bi bi-filter-left px-2 bg-stonewall-500 rounded-md z-100"></i>
  </div>
{/if}

{#if showSidePanel}
  <aside class="relative z-10 text-[20px]">
    <div class="fixed inset-0">
      <div
        bind:clientWidth={width}
        transition:fly={{ x: -width, duration: 250, opacity: 1 }}
        class="m-auto flex h-[95%] flex-col overflow-y-scroll py-6 shadow-xl"
      >
        <div>
          <div
            class="sidebar fixed top-0 bottom-0 lg:left-0 p-2 w-[200px] overflow-y-auto text-center bg-stonewall-800 shadow-xl"
          >
            <div class="text-gray-100 text-xl font-blogger font-medium">
              <div class="p-1 mt-1 flex items-center">
                <i class="bi bi-app-indicator p-1 rounded-md bg-stonewall-600"
                ></i>
                TailwindCSS

                <i
                  class="bi bi-x cursor-pointer ml-3 lg:hidden"
                  on:click={toggleSidePanel}
                >
                </i>
              </div>
              <div class="my-2 bg-stonewall-600 h-[1px]"></div>
            </div>

            <div
              class="p-0 mt-2 flex items-center rounded-sm px-2 duration-300 cursor-pointer text-white hover:bg-neon-200"
            >
              <i class="bi bi-house-door-fill text-neon-300"></i>
              <span class="flex mt-1 ml-3"
                ><a
                  class="text-[16px] font-blogger font-medium text-stonewall-50"
                  href="#">Home</a
                ></span
              >
            </div>
            <div
              class="p-0 mt-2 flex items-center rounded-md px-4 duration-300 cursor-pointer hover:bg-blue-600 text-white"
            >
              <i class="bi bi-bookmark"></i>
              <span
                class="font-blogger font-medium flex mt-1 ml-3 text-gray-200"
                ><a href="/gallery">Gallery Page</a></span
              >
            </div>
            <div class="my-4 bg-gray-600 h-[1px]"></div>

            <!-- ⤵️ Dropdown -->
            <div
              on:click={toggle2}
              class="refleckt transition duration-1000 hover:bg-yellow-500 p-2.5 mt-3 flex items-center rounded-md px-4 duration-300 cursor-pointer hover:bg-blue-600 text-white"
            >
              <i class="bi bi-chat-left-text-fill"></i>
              <div class="flex justify-between w-full items-center">
                <span class="ml-4 text-gray-200">P5.js Patterns</span>
                <span
                  class="text-sm {dropDownHidden === true
                    ? 'rotate-0'
                    : 'rotate-180'} text-sm"
                  id="arrow"
                >
                  <i class="bi bi-chevron-down"></i>
                </span>
              </div>
            </div>
            {#if dropDownHidden}
              <div
                class="font-blogger text-left text-[15px] mt-2 w-4/5 mx-auto text-gray-200 font-bold"
                id="submenu"
              >
                <TestNew />
              </div>
            {/if}
            <div
              class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300 cursor-pointer hover:bg-blue-600 text-white"
            >
              <i class="bi bi-box-arrow-in-right"></i>
              <span class="text-[15px] ml-4 text-gray-200">Logout</span>
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
    background-image: radial-gradient(
        at 67% 79%,
        rgb(146, 64, 14) 0,
        transparent 35%
      ),
      radial-gradient(at 71% 51%, rgb(7, 89, 133) 0, transparent 51%),
      radial-gradient(at 72% 66%, rgb(202, 138, 4) 0, transparent 62%),
      radial-gradient(at 84% 17%, rgb(231, 229, 228) 0, transparent 35%),
      radial-gradient(at 22% 15%, rgb(219, 39, 119) 0, transparent 26%),
      radial-gradient(at 29% 21%, rgb(64, 64, 64) 0, transparent 6%);
  }

  button {
    position: relative;
    display: block;
    overflow: hidden;
    padding: 20px 30px;
    text-decoration: none;
    background-color: #3b3b3b;
    border-radius: 5px;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: 4px;
    transition: background-color 0.4s;
  }
  refleckt:before,
  button:before,
  button2:before {
    content: '';
    position: absolute;
    display: block;
    top: 0px;
    left: 0px;
    width: 70%;
    height: 100%;
    background: linear-gradient(90deg, transparent, #ffffff71, transparent);
    transform: translateX(-180px) skew(-20deg);
    transition: transform 0.4s;
  }
  refleckt:hover::before,
  button:hover::before,
  button2:hover::before {
    transform: translateX(220px) skew(-20deg);
  }

  span {
    color: theme('colors.neon.200');
  }
</style>
