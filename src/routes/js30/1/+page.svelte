<script>
	import { onMount } from 'svelte';

	onMount(() => {
		function ensureOffScreenInput() {
			let elem = document.querySelector('#__fake_input');
			if (!elem) {
				elem = document.createElement('input');
				elem.style.position = 'fixed';
				elem.style.top = '0px';
				elem.style.opacity = '0.1';
				elem.style.width = '10px';
				elem.style.height = '10px';
				elem.style.transform = 'translateX(-1000px)';
				elem.type = 'text';
				elem.id = '__fake_input';
				document.body.appendChild(elem);
			}
			return elem;
		}

		var node = document.querySelector('#real-input');
		var fakeInput = ensureOffScreenInput();

		function handleFocus(event) {
			fakeInput.focus();

			let last = event.target.getBoundingClientRect().top;

			setTimeout(() => {
				function detectMovement() {
					const now = event.target.getBoundingClientRect().top;
					const dist = Math.abs(last - now);

					// Once any animations have stabilized, do your thing
					if (dist > 0.01) {
						requestAnimationFrame(detectMovement);
						last = now;
					} else {
						event.target.focus();
						event.target.addEventListener('focus', handleFocus, { once: true });
					}
				}
				requestAnimationFrame(detectMovement);
			}, 50);
		}

		node.addEventListener('focus', handleFocus, { once: true });

		// Start lesson 1
		function playSound(e) {
			const audio = document.querySelector(`audio[data-key="${e.keyCode}"]`);
			const key = document.querySelector(`div[data-key="${e.keyCode}"]`);
			console.log(audio, key);
			if (!audio) return;

			key.classList.add('playing');
			audio.currentTime(0);
			audio.play();
		}

		const keys = Array.from(document.querySelectorAll('.key'));
		keys.forEach((key) => key.addEventListener('transitionend', removeTransition));
		window.addEventListener('keydown', playSound);

		console.log(keys);
	}); // end onMount
</script>

<svelte:window on:keydown={playSound} />

<input id="real-input" />

<div class="keys">
	<div data-key="65" class="key">
		<kbd>A</kbd>
		<span class="sound">clap</span>
	</div>
	<div data-key="83" class="key">
		<kbd>S</kbd>
		<span class="sound">hihat</span>
	</div>
	<div data-key="68" class="key">
		<kbd>D</kbd>
		<span class="sound">kick</span>
	</div>
	<div data-key="70" class="key">
		<kbd>F</kbd>
		<span class="sound">openhat</span>
	</div>
	<div data-key="71" class="key">
		<kbd>G</kbd>
		<span class="sound">boom</span>
	</div>
	<div data-key="72" class="key">
		<kbd>H</kbd>
		<span class="sound">ride</span>
	</div>
	<div data-key="74" class="key">
		<kbd>J</kbd>
		<span class="sound">snare</span>
	</div>
	<div data-key="75" class="key">
		<kbd>K</kbd>
		<span class="sound">tom</span>
	</div>
	<div data-key="76" class="key">
		<kbd>L</kbd>
		<span class="sound">tink</span>
	</div>
</div>

<audio data-key="65" src="$assets/lesson01/sounds/clap.wav"></audio>
<audio data-key="83" src="$lib/assets/lesson01/sounds/hihat.wav"></audio>
<audio data-key="68" src="$lib/assets/lesson01/sounds/kick.wav"></audio>
<audio data-key="70" src="$lib/assets/lesson01/sounds/openhat.wav"></audio>
<audio data-key="71" src="$lib/assets/lesson01/sounds/boom.wav"></audio>
<audio data-key="72" src="$lib/assets/lesson01/sounds/ride.wav"></audio>
<audio data-key="74" src="$lib/assets/lesson01/sounds/snare.wav"></audio>
<audio data-key="75" src="$lib/assets/lesson01/sounds/tom.wav"></audio>
<audio data-key="76" src="$lib/assets/lesson01/sounds/tink.wav"></audio>

<style>
	html {
		font-size: 10px;
		background: url('$lib/assets/lesson01/background.jpg') bottom center;
		background-size: cover;
	}

	body,
	html {
		margin: 0;
		padding: 0;
		font-family: sans-serif;
	}

	.keys {
		display: flex;
		flex: 1;
		min-height: 100vh;
		align-items: center;
		justify-content: center;
	}

	.key {
		border: 0.4rem solid black;
		border-radius: 0.5rem;
		margin: 1rem;
		font-size: 1.5rem;
		padding: 1rem 0.5rem;
		transition: all 0.07s ease;
		width: 10rem;
		text-align: center;
		color: white;
		background: rgba(0, 0, 0, 0.4);
		text-shadow: 0 0 0.5rem black;
	}

	.playing {
		transform: scale(1.1);
		border-color: #ffc600;
		box-shadow: 0 0 1rem #ffc600;
	}

	kbd {
		display: block;
		font-size: 4rem;
	}

	.sound {
		font-size: 1.2rem;
		text-transform: uppercase;
		letter-spacing: 0.1rem;
		color: #ffc600;
	}
</style>
