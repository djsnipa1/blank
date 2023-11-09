<script>
	import { Heading, P, Span } from 'flowbite-svelte';
	import Io from '$lib/components/io.svelte';
	import Colors from '$lib/components/colors.svelte';
	
	import { PUBLIC_FOO } from '$env/dynamic/public';

console.log(PUBLIC_FOO); // prints 'bar'

</script>

<Heading
	tag="h1"
	class="mb-4 flex justify-center items-center"
	customSize="text-3xl font-extrabold  md:text-5xl lg:text-6xl"
>
	<Span gradient>Chad Boyce</Span>
	<Span gradient>{PUBLIC_FOO}</Span>
</Heading>

<P
	>Here at Flowbite we focus on markets where technology, innovation, and capital can unlock
	long-term value and drive economic growth.</P
>
https://www.smashingmagazine.com/2011/10/quick-look-math-animations-javascript/
<button
	class="m-4 p-1 rounded-full bg-gradient-to-r from-rose-400 via-fuchsia-500 to-indigo-500 hover:bg-transparent hover:white-text transition"
>
	<span class="block text-black px-4 py-2 font-semibold rounded-full bg-white">Follow Me</span>
</button>

<button class="m-4 p-1 rounded-full from-rose-400 via-fuchsia-500 to-indigo-500 bg-gradient-to-r">
	<span
		class="block text-black px-4 py-2 font-semibold rounded-full bg-white hover:bg-transparent hover:text-white transition"
		>Follow Me</span
	>
</button>

<Io />

<Colors />
