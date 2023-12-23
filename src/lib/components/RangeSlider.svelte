
<input type="range" min="0" max="100" value="40" class="w-2/3 h-[20px] bg-pink-500  border-none" />

<input type="range" min="0" max="100" value="40" class="range" />

<script type="text/javascript">
   var val = 75;
</script>

<form style="--val: 75;">
   <input class="w-2/3"  id="r" type="range" value="75">
   <output for="r"></output>
</form>

<style lang="scss">
/*
input[type="range"].slider-track {
  border: none;
  margin: 10px 0;
  width: 100%;
  height: 30px;
  padding: 0;
  overflow-x: hidden;
  overflow-y: visible;
  background: transparent;
}

input[type="range"].slider-track::-moz-range-thumb {
    box-shadow: none;
    border: 2px solid grey;
    height: 16px;
    width: 16px;
    border-radius: 16px;
    background: white;
}

input[type="range"].slider-track::-moz-range-track {
    width: 100%;
    height: 2px;
    box-shadow: none;
    background: blue;
    border-radius: 0px;
    border: 0px;
}
*/

$track-h: 1.125rem;
$track-r: .5*$track-h;
$inner-s: 
	inset 0 2px 2px rgba(#f7f7f7, .2);
$outer-s:
	0 1px 1px #1a1a1a;
$track-c: #303030;

$progr-h: .1875rem;
$progr-r: .5*$progr-h;
$progr-m: $track-r - $progr-r;
$progr-g: linear-gradient(90deg, #b69806, #b12959);

$thumb-d: $track-h;
$thumb-c:
	#8a8a8a, #e0e0e0, #909090, #f1f2f1, #949392, #cfcfcf;
$thumb-s: ();

$value-w: 4ch;

@for $i from 1 to 13 {
	$thumb-s: $thumb-s, 0 $i*1px 3px rgba(#000, .05);
}

@mixin track($f: 0) {	
	@if $f > 0 {
		--dim: calc(var(--js)*.01*var(--val)*100%);
		margin: $progr-m;
		background: $progr-g 0/ var(--dim) no-repeat
	}
	@else { width: calc(100% - 2*#{$progr-m}) }

	height: $progr-h;
	border-radius: $progr-r;
	box-shadow: $inner-s, $outer-s;
	background-color: $track-c
}

@mixin thumb($o: 0) {
	border: none;
	width: $thumb-d; height: $thumb-d;
	border-radius: 50%;
	box-shadow: $thumb-s, 
		inset 0 0 0 2px rgba(#ededed, .2);
	background: 
		conic-gradient($thumb-c, nth($thumb-c, 1));
	cursor: ew-resize
}

* { margin: 0; font: inherit }

.js { --js: 1 }

body, form { display: grid }
	
body {
	box-sizing: border-box;
	overflow-x: hidden;
	padding: $track-r;
	min-height: 100vh;
	background: 
		url(https://i.stack.imgur.com/PEnJm.png), 
		radial-gradient(#49586b, #091521);
	background-blend-mode: multiply;
	font: 1em ubuntu mono, monospace
}

form {
	--i: var(--narr, 1);
	--not-i: calc(1 - var(--i));
	--j: var(--wide, 0);
	--not-j: calc(1 - var(--j));
	grid-auto-columns: 1fr max-content;
	grid-gap: $track-r;
	place-self: center;
	width: Min(25em, 100%);
	
	> * {
		height: $track-h;
		border-radius: $track-r;
		box-shadow:
			0 1px 2px #707070, 
			inset 0 1px 3px #0f1110;
		background: 
			linear-gradient(to right top, #474747, #202020) 
				padding-box
	}
	
	@media (min-width: 320px) { --narr: 0 }
	@media (min-width: 640px) { --wide: 1 }
}

[type='range'] {
	&::-webkit-slider-runnable-track, 
	&::-webkit-slider-thumb, & { -webkit-appearance: none }
	
	grid-area: 1/ 1;
	height: 1em;
	cursor: pointer;

	/* move background on this, so transparent track, 
	* whose width decides range of motion in WebKit browsers
	* can coincide with input */
	&::-webkit-slider-container {
		/* Chrome tries really hard to make this read-only */
		-webkit-user-modify: read-write !important;
		@include track(1)
	}
	
	&::-webkit-slider-runnable-track { margin: -$progr-m; }		
	&::-moz-range-track { @include track }
	
	&::-moz-range-progress {
		border: solid $progr-m transparent;
		border-right-width: calc(.01*var(--val)*#{$progr-m});
		height: $progr-h;
		border-radius: $track-r;
		box-shadow: $inner-s;
		background: $progr-g padding-box;
	}
	
	&::-webkit-slider-thumb { @include thumb(1) }
	&::-moz-range-thumb { @include thumb }
	
	+ output {
		display: var(--js, none);
		grid-column: calc(1 + var(--not-i));
		place-self: center;
		padding: 0 $track-r;
		width: $value-w;
		counter-reset: val var(--val);
		
		&::after {
			display: grid;
			place-content: center;
			height: 100%;
			color: #e3e3e3;
			text-shadow: 0 1px 1px #010101;
			font-size: 75%;
			content: counter(val) '%'
		}
	}
}

</style>

