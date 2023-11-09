<script lang="ts">
	import '../app.postcss';
	import Menu2 from '$lib/components/menu2.svelte';
	import Navbar from '$lib/components/navbar.svelte';
	import Sidebar from '$lib/components/sidebar.svelte';
	import DrawerMenu from '$lib/components/drawerMenu.svelte';
	import { DarkMode } from 'flowbite-svelte';

	let hidden2: boolean = true;
</script>

<header>
	<nav>
		<Navbar bind:hidden2 />
		<DarkMode />
	</nav>
</header>
<div class="flex justify-center items-center">
	<!--<nav>
	<Sidebar />
	<Menu2 />
</nav> -->

	<DrawerMenu bind:hidden2 />
</div>
<main>
	<slot />
</main>
