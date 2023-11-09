<script>
	import IntersectionObserver from 'svelte-intersection-observer';
	import { fade } from 'svelte/transition';
	import { Heading, Span } from 'flowbite-svelte';
	let threshold = 1.0;
	let rootMargin = '0px';
	let node;
</script>

<IntersectionObserver element={node} let:intersecting>
	<div bind:this={node}>
		{#if intersecting}
			<div transition:fade={{ delay: 200 }}>
				<Heading tag="h1">
					<Span
						class="text-transparent bg-clip-text bg-gradient-to-r from-rose-400 via-fuchsia-500 to-indigo-500"
						>Hello World!</Span
					>
				</Heading>
			</div>
		{/if}
	</div>
</IntersectionObserver>

<IntersectionObserver element={node} {threshold} {rootMargin} once={false} let:intersecting>
	<div
		class={`transition-all duration-1000 ${
			intersecting ? 'opacity-100 scale-100' : 'opacity-0 scale-0'
		}`}
	>
		I'm a div that fades in and scales up when intersecting with the viewport.
	</div>
</IntersectionObserver>
