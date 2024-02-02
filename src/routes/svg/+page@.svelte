<script>
	import Signature from './signature.svelte';
	let show = false;
</script>

<input type="checkbox" bind:checked={show} />

<div>
	<h1>Svelte!</h1>
	<Signature {show} />
</div>

<style>
	div {
		display: flex;
		justify-content: center;
		position: relative;
	}
	div > :global(svg) {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
	}
</style>