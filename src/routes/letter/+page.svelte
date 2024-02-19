<script>
	import Letterize from 'https://cdn.skypack.dev/letterizejs@2.0.0';
	const test = new Letterize({
		targets: '#animateMe'
	});

	var animation = anime.timeline({
		targets: test.listAll,
		delay: anime.stagger(50),
		loop: true
	});

	animation
		.add({
			translateY: -40
		})
		.add({
			translateY: 0
		});
</script>

<div class="bodyDiv min-h-full min-w-full bg-amber-500">
	<div id="animateMe">Letterize.js and Anime.js</div>
</div>

<style>
	.bodyDiv {
		background-color: #222;
		color: #fff;
		font-weight: 800;
		font-size: 5vw;
		display: flex;
		align-items: center;
		justify-content: center;
		text-align: center;
		font-family: 'Khula', sans-serif;
		height: 100vh;
		box-sizing: border-box;
		margin: 0;
	}

	span {
		display: inline-block;
	}
</style>
