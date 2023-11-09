<svelte:head>
	<link
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
		rel="stylesheet"
	/>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.co/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
</svelte:head>

<section class="bubbles sectional text-left text-white orange-yellow">
	<div class="container">
		<div class="bubble-wrap">
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
			<div class="bubble" />
		</div>
		<div class="hgroup-400 row">
			<div class="col-md-6 col-lg-5 col-xl-4 d-flex align-items-center">
				<div>
					<h1 class="h2">Enterprise Hosting that's out of this world</h1>
					<p class="h-subhead">Pilot your website on the only platform built for the AWS Cloud</p>
					<a class="btn btn-lg orange" href="https://www.solodev.com/free-trial/" target="_blank"
						>Start for Free</a
					>
				</div>
			</div>
			<div class="col-lg-7 col-md-6">
				<img
					alt="Captain Piloting"
					class="text-right dan-in-space-ship"
					src="https://www.solodev.com/core/fileparse.php/8/urlt/_/images/dan-in-space-ship.png"
				/>
			</div>
		</div>
	</div>
</section>

<style lang="scss">
	.orange-yellow {
		overflow: hidden;
		background: linear-gradient(358deg, #ffea02 0, #ff8d02 78%, #ff8d02 80%, #ff8d02 100%);
	}

	.hgroup-400 {
		height: 400px;
		@media screen and (max-width: 768px) {
			min-height: 300px;
		}
	}
	.orange {
		background-color: #ff910e;
		border-color: #ff910e;
		color: #fff;
	}
	.btn {
		text-transform: uppercase;
	}
	.btn-lg {
		padding: 0.5rem 2rem;
		font-size: 1rem;
		line-height: 1.5;
		border-radius: 2rem;
	}

	@keyframes move {
		100% {
			transform: translate3d(0, 0, -3000px);
		}
	}
	.bubbles {
		transform-style: preserve-3d;
		position: relative;
	}
	.bubble-wrap {
		margin: 0 auto;
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		border: 0;
		height: 100%;
		width: 100%;
		transform-style: preserve-3d;
		transform-origin: center center;
		perspective: 300px;
		overflow: hidden;
	}
	.bubble {
		position: absolute;
		background: black;
		opacity: 0.7;
		border-radius: 50%;
		animation: move 5s infinite;
	}

	@for $i from 1 through 50 {
		.bubble:nth-child(#{$i}) {
			$size: random(30) + px;
			height: $size;
			width: $size;
			animation-delay: -$i * 0.2s;
			transform: translate3d((random(2000) * 1px), (random(1000) * 1px), (random(2000) * 1px));
			background: hsl(random(48), 70%, 50%);
		}
	}
	.dan-in-space-ship {
		bottom: 0;
		right: 0;
		position: absolute;
		width: 100%;
	}
	.moon-base {
		background: url(/_/images/moon-base.png);
		background-repeat: no-repeat;
		background-size: contain;
		background-position: bottom;
	}

	@media screen and (max-width: 992px) {
		.dan-in-space-ship {
			opacity: 0.5;
			z-index: -100;
		}
	}

	@media screen and (max-width: 720px) {
		.dan-in-space-shup {
			right: -200px;
		}
	}
</style>
