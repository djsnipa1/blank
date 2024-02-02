<script>
 import { onMount } from ‘svelte’; import { useLocation } from ‘svelte-navigator’; import { writable } from ‘svelte/store’;
export let sidebarOpen; export let setSidebarOpen;
const location = useLocation(); const { pathname } = location;
let trigger; let sidebar;
const storedSidebarExpanded = localStorage.getItem(‘sidebar-expanded’); const sidebarExpanded = writable(storedSidebarExpanded === null ? false : storedSidebarExpanded === ‘true’);
// close on click outside onMount(() => { const clickHandler = ({ target }) => { if (!sidebar || !trigger) return; if (!sidebarOpen || sidebar.contains(target) || trigger.contains(target)) return; setSidebarOpen(false); }; document.addEventListener(‘click’, clickHandler); return () => document.removeEventListener(‘click’, clickHandler); });
// close if the esc key is pressed onMount(() => { const keyHandler = ({ keyCode }) => { if (!sidebarOpen || keyCode !== 27) return; setSidebarOpen(false); }; document.addEventListener(‘keydown’, keyHandler); return () => document.removeEventListener(‘keydown’, keyHandler); });
$: { localStorage.setItem(‘sidebar-expanded’, $sidebarExpanded); if ($sidebarExpanded) { document.querySelector(‘body’).classList.add(‘sidebar-expanded’); } else { document.querySelector(‘body’).classList.remove(‘sidebar-expanded’); } }
</script>

<!-- Sidebar header -->
<div class="flex justify-between mb-10 pr-3 sm:px-2">
  <!-- Close button -->
  <button
    bind:this={trigger}
    class="lg:hidden text-slate-500 hover:text-slate-400"
    on:click={() => (sidebarOpen = !sidebarOpen)}
    aria-controls="sidebar"
    aria-expanded={sidebarOpen}
  >
    <span class="sr-only">Close sidebar</span>
    <svg
      class="w-6 h-6 fill-current"
      viewBox="0 0 24 24"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path d="M10.7 18.7l1.4-1.4L7.8 13H20v-2H7.8l4.3-4.3-1.4-1.4L4 12z" />
    </svg>
  </button>
  <!-- Logo -->
  <NavLink end to="/" class="block">
    <svg width="32" height="32" viewBox="0 0 32 32">
      <defs>
        <linearGradient
          x1="28.538%"
          y1="20.229%"
          x2="100%"
          y2="108.156%"
          id="logo-a"
        >
          <stop stopColor="#A5B4FC" stopOpacity="0" offset="0%" />
          <stop stopColor="#A5B4FC" offset="100%" />
        </linearGradient>
        <linearGradient
          x1="88.638%"
          y1="29.267%"
          x2="22.42%"
          y2="100%"
          id="logo-b"
        >
          <stop stopColor="#38BDF8" stopOpacity="0" offset="0%" />
          <stop stopColor="#38BDF8" offset="100%" />
        </linearGradient>
      </defs>
      <rect fill="#6366F1" width="32" height="32" rx="16" />
      <path
        d="M18.277.16C26.035 1.267 32 7.938 32 16c0 8.837-7.163 16-16 16a15.937 15.937 0 01-10.426-3.863L18.277.161z"
        fill="#4F46E5"
      />
      <path
        d="M7.404 2.503l18.339 26.19A15.93 15.93 0 0116 32C7.163 32 0 24.837 0 16 0 10.327 2.952 5.344 7.404 2.503z"
        fill="url(#logo-a)"
      />
      <path
        d="M2.223 24.14L29.777 7.86A15.926 15.926 0 0132 16c0 8.837-7.163 16-16 16-5.864 0-10.991-3.154-13.777-7.86z"
        fill="url(#logo-b)"
      />
    </svg>
  </NavLink>
</div>
