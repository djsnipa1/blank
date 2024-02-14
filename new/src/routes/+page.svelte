<script>
	import { goto } from '$app/navigation';
	import '@fontsource/khand/300.css';
	import '@fontsource/khand/400.css';
	import '@fontsource/khand/500.css';
	import '@fontsource/khand/600.css';
	import '@fontsource/khand/700.css';
</script>

<h1
	class="font-weight-600 flex justify-center bg-gradient-to-br from-amber-200 to-amber-600 bg-clip-text p-4 text-6xl font-bold font-bold text-transparent"
>
	Chad Boyce
</h1>

<div class="wrapper grid grid-cols-4">
	<button on:click={() => goto('/circles')} class="button btn text-white"> Circles </button>
</div>

<style lang="postcss">
	h1 {
		font-family: 'Khand', sans-serif;
		font-weight: 600;
	}
	.top {
		clip-path: polygon(0 0, 100% 0, 100% 100%, 0 calc(100% - 25px));
	}
	.bottom {
		clip-path: polygon(0 0, 100% 25px, 100% 100%, 0 100%);
		margin-top: -25px;
	}

	.top-pattern {
		--s: 50px; /* control the size */
		--c1: #e1f5c4;
		--c2: #3b8183;

		--_g: #0000, #0004 5%, var(--c2) 6% 14%, var(--c1) 16% 24%, var(--c2) 26% 34%, var(--c1) 36% 44%,
			var(--c2) 46% 54%, var(--c1) 56% 64%, var(--c2) 66% 74%, var(--c1) 76% 84%, var(--c2) 86% 94%,
			#0004 95%, #0000;
		background: radial-gradient(100% 50% at 100% 0, var(--_g)),
			radial-gradient(100% 50% at 0 50%, var(--_g)),
			radial-gradient(100% 50% at 100% 100%, var(--_g));
		background-size: var(--s) calc(2 * var(--s));
	}

	a#carrot {
		position: relative;
		text-decoration: none;
		color: green;
	}

	a:before {
		content: '';
		position: absolute;
		top: 0px;
		left: 0px;
		width: 0px;
		height: 100%;
		background: orange;
		transition: all 0.5s;
		z-index: -1;
	}

	a:hover:before {
		width: 100%;
	}
</style>
