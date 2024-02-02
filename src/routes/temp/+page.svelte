<script>
  import { fly } from 'svelte/transition';
  const svg1 = `
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="h-6 w-6 text-[#fabd2f] group-hover:text-[#fe8019]">
          <path d="m3 9 9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
          <polyline points="9 22 9 12 15 12 15 22"></polyline>
        </svg>
`;
  const svg2 = `
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="h-6 w-6 text-[#fabd2f] group-hover:text-[#fe8019]">
          <path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2"></path>
          <circle cx="12" cy="7" r="4"></circle>
        </svg>
`;
  const svg3 = `
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="h-6 w-6 text-[#fabd2f] group-hover:text-[#fe8019]">
          <path d="M12.22 2h-.44a2 2 0 0 0-2 2v.18a2 2 0 0 1-1 1.73l-.43.25a2 2 0 0 1-2 0l-.15-.08a2 2 0 0 0-2.73.73l-.22.38a2 2 0 0 0 .73 2.73l.15.1a2 2 0 0 1 1 1.72v.51a2 2 0 0 1-1 1.74l-.15.09a2 2 0 0 0-.73 2.73l.22.38a2 2 0 0 0 2.73.73l.15-.08a2 2 0 0 1 2 0l.43.25a2 2 0 0 1 1 1.73V20a2 2 0 0 0 2 2h.44a2 2 0 0 0 2-2v-.18a2 2 0 0 1 1-1.73l.43-.25a2 2 0 0 1 2 0l.15.08a2 2 0 0 0 2.73-.73l.22-.39a2 2 0 0 0-.73-2.73l-.15-.08a2 2 0 0 1-1-1.74v-.5a2 2 0 0 1 1-1.74l.15-.09a2 2 0 0 0 .73-2.73l-.22-.38a2 2 0 0 0-2.73-.73l-.15.08a2 2 0 0 1-2 0l-.43-.25a2 2 0 0 1-1-1.73V4a2 2 0 0 0-2-2z"></path>
          <circle cx="12" cy="12" r="3"></circle>
        </svg>
`;
  const svg4 = `
<svg
          xmlns="http://www.w3.org/2000/svg"
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
          class="h-6 w-6 text-[#fabd2f] group-hover:text-[#fe8019]"
        >
          <rect width="20" height="16" x="2" y="4" rx="2"></rect>
          <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"></path>
        </svg>
`;
  const svg5 = `
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="h-6 w-6 text-[#fabd2f] group-hover:text-[#fe8019]">
          <circle cx="12" cy="12" r="10"></circle>
          <path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path>
          <path d="M12 17h.01"></path>
        </svg>
`;
  const svg6 = `
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="h-6 w-6 text-[#fabd2f] group-hover:text-[#fe8019]">
          <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
          <polyline points="16 17 21 12 16 7"></polyline>
          <line x1="21" x2="9" y1="12" y2="12"></line>
        </svg>
`;

  let button1;
</script>

<!--
// v0 by Vercel.
// https://v0.dev/t/hRB5NEjzpT6
// prompt: aside menu with gruvbox color scheme
-->
<div class="flex h-screen bg-[#282828]">
  <aside
    class="flex flex-col items-start justify-between w-16 md:w-20 lg:w-24 h-full p-4 transition-all duration-200 ease-in-out hover:w-64"
  >
    <div class="flex flex-row items-start gap-6">
      <a bind:this={button1} transition:fly class="group" href="#">
        {@html svg1}
        <span class="text-[#fabd2f] text-sm group-hover:block hidden w-1/2"
          >Home</span
        ></a
      ><a class="group" href="#">
        {@html svg2}
        <span class="text-[#fabd2f] text-sm mt-2 group-hover:block hidden"
          >Profile</span
        ></a
      ><a class="group" href="#">
        {@html svg3}
        <span class="text-[#fabd2f] text-sm mt-2 group-hover:block hidden"
          >Settings</span
        ></a
      ><a class="group" href="#">
        {@html svg4}
        <span class="text-[#fabd2f] text-sm mt-2 group-hover:block hidden"
          >Messages</span
        ></a
      >
    </div>
    <div class="flex flex-col items-center gap-6">
      <a class="group" href="#">
        {@html svg5}
        <span class="text-[#fabd2f] text-sm mt-2 group-hover:block hidden"
          >Help</span
        ></a
      ><a class="group" href="#">
        {@html svg6}
        <span class="text-[#fabd2f] text-sm mt-2 group-hover:block hidden"
          >Logout</span
        ></a
      >
    </div>
  </aside>
  <main class="flex-1 bg-[#3c3836] text-[#ebdbb2] p-6"></main>
</div>
