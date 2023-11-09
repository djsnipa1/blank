<script>
	import {
		Button,
		Navbar,
		NavBrand,
		NavLi,
		NavUl,
		NavHamburger,
		ImagePlaceholder,
		Skeleton,
		TextPlaceholder
	} from 'flowbite-svelte';
	import { BarsSolid } from 'flowbite-svelte-icons';
	import { onMount } from 'svelte';

	export let hidden2;

	onMount(() => (hidden2 = true));
</script>

<div class="relative px-8">
	<Navbar class="px-2 sm:px-4 py-2.5 fixed w-full z-20 top-0 left-0 border-b">
		<NavBrand href="/">
			<img
				src="/images/IMG_5998-removebg-preview.svg"
				class="mr-3 h-14 sm:h-11 dark:text-white"
				alt="boycedesigns logo"
			/>
			<span class="self-center whitespace-nowrap text-xl font-semibold dark:text-white"
				>boycedesigns</span
			>
		</NavBrand>
		<NavHamburger />
		<Button
			on:click={() => (hidden2 = false)}
			class="bg-gradient-to-tr from-yellow-500 to-orange-500"
		>
			<BarsSolid />
		</Button>
		<NavUl>
			<NavLi href="/" active={true}>Home</NavLi>
			<NavLi href="/about">About</NavLi>
			<NavLi href="/docs/components/navbar">Navbar</NavLi>
			<NavLi href="/pricing">Pricing</NavLi>
			<NavLi href="/contact">Contact</NavLi>
		</NavUl>
	</Navbar>
	<div style="height:300px;" class="overflow-scroll pb-16">
		<Skeleton class="mt-16 mb-8" />
		<ImagePlaceholder class="my-8" />
		<TextPlaceholder class="my-8" />
	</div>
</div>
