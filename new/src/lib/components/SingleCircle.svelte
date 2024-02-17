<script>
	export let dur;
	export let delay;
</script>

<div 
    id={item.id} 
	class="absolute mx-auto h-20 w-20 rounded-[100%] border-4 border-white"
	animate:customScales={{delay: {delay}, duration: {dur}, easing: elasticOut}}
></div>

<style>
	.background {
		position: absolute;
		height: 100%;
		width: 100%;
		top: 0;
		left: 0;
		background-color: #282828;
		/* background-color: #d2ff57; */
		background-image: url('https://www.transparenttextures.com/patterns/3px-tile.png');
		background-repeat: repeat;
		background-size: auto;
		z-index: -1; /* Places the background behind the content */
	}
</style>
