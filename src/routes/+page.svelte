<script>
  import Psylo from '$lib/components/Psylo.svelte';
  import SvelteStars from '$lib/components/SvelteStars.svelte';
  import Scale from '$lib/components/Scale.svelte';
  import Button from '$lib/components/Button.svelte';
  import Transition from '$lib/components/Transition.svelte';

  import { MainCard } from '$components';

  import '@fontsource/khand/300.css';
  import '@fontsource/khand/400.css';
  import '@fontsource/khand/500.css';
  import '@fontsource/khand/600.css';
  import '@fontsource/khand/700.css';
</script>

<h1
  class="khand font-weight-600 text-6xl font-bold bg-gradient-to-br from-neon-200 to-neon-600 text-transparent bg-clip-text flex justify-center p-4"
>
  Chad Boyce<br /><span class="font-bold">CHAD BOYCE</span>
</h1>

<!-- <Button label={'Motherfuck'} />
<Transition />
-->
<ul
  class="text-2xl font-semibold bg-gradient-to-br from-pink-600 to-yellow-600 inline-block text-transparent bg-clip-text"
>
  <li><a href="/canvas">Canvas</a></li>
  <li><a href="/newmenu">New Menu</a></li>
  <li><a href="/svg">SVG</a></li>
  <li><a href="/overlay">Overlay</a></li>
  <li><a href="/michael">Michael</a></li>
  <li><a href="/confetti">Confetti</a></li>
  <li><a href="/cssdoodle/3">CSS Doodle 3</a></li>
  <li><a href="/obsidianlink">Obsidian Link</a></li>
  <li><a href="/gallery">Gallery Page</a></li>
  <li><a href="/js30/1">JS30 - 1</a></li>
  <li><a href="/gradient">Gradient</a></li>
  <li><a href="/pat01">Patterns - 01</a></li>
  <li><a href="/pat02">Patterns - 02</a></li>
  <li><a href="/pat03">Patterns - 03</a></li>
  <li><a href="/pat04">Patterns - 04</a></li>
  <li><a href="/pat05">Patterns - 05</a></li>
  <li><a href="/pat06">Patterns - 06</a></li>
  <li><a href="/range">Range Component</a></li>
  <li><a href="/menu">Menu Test</a></li>
  <li><a href="/menu2">Menu Test 2</a></li>
  <li><a href="/patterns/code">Code Patterns</a></li>
</ul>

<br />

<h1 class="text-3xl font-bold m-4">
  Words <a
    href="#"
    class="bg-gradient-to-r from-rose-400 via-fuchsia-500 to-indigo-500 bg-bottom bg-no-repeat bg-[length:100%_6px] hover:bg-[length:100%_100%] transition-[background-size]"
    >CodingSpace</a
  >
</h1>
<!--
<button
  class="text-2xl font-bold transition-all duration-1000 delay-100 bg-gradient-to-tr from-pink-600 to-yellow-600 bg-size-200 bg-[bottom_left_0%] hover:bg-[top_right_100%] hover:bg-pos-100 hover:inline-block text-transparent bg-clip-text"
  >Test Button</button
>

<button
  class="m-2 p-10 text-white rounded-xl transition-all duration-500 bg-gradient-to-t from-red-800 via-red-500 to-red-200 bg-size-200 bg-pos-0 hover:bg-pos-100"
  >Hover me</button
>
-->
<!--
<MainCard />

<Scale />
-->
<!--
<img src="https://awik.io/demo/fill-background-gradually/carrot2.png" />
<p>
  Hi! I'm a <a id="carrot" href="#">carrot</a> looking forward to swim in the soup.
</p>
-->
<h3 class="text-xl">Specific #each tag</h3>

<div class="grid grid-cols-6 m-4 gap-4">
  {#each Array(6) as _, index (index)}
    <div class="bg-orange-400 h-12 rounded-tr-md">&nbsp;</div>
  {/each}
</div>
<div class="m-4 flex space-x-4">
  <div
    class="h-48 w-1/2 rounded-md shadow-md bg-gradient-to-br from-lime-100 to-teal-900"
  >
    &nbsp;
  </div>
  <div
    class="w-1/2 rounded-md shadow-md bg-gradient-to-tr from-teal-900 to-lime-100"
  >
    &nbsp;
  </div>
</div>
<div
  class="m-4 h-screen shadow-md rounded-md bg-gradient-to-t from-gray-900 to-gray-600 bg-gradient-to-r text-center"
></div>

<div
  class="m-4 h-screen shadow-md rounded-md bg-gradient-to-b from-orange-500 to-yellow-500"
></div>

<div class="top top-pattern m-4 rounded-md h-screen shadow-md">&nbsp;</div>
<div
  class="bottom m-4 rounded-md h-screen shadow-md bg-gradient-to-t from-teal-500 to-green-400"
>
  &nbsp;
</div>

<style lang="scss">
  :global(body) {
    color: white;
  }
  h1 {
    font-family: 'Khand', sans-serif;
    font-weight: 600;
  }
  h2 {
    font-family: 'Big Shoulders Inline Display Variable', sans-serif;
    font-weight: 900;
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

    --_g: #0000, #0004 5%, var(--c2) 6% 14%, var(--c1) 16% 24%,
      var(--c2) 26% 34%, var(--c1) 36% 44%, var(--c2) 46% 54%, var(--c1) 56% 64%,
      var(--c2) 66% 74%, var(--c1) 76% 84%, var(--c2) 86% 94%, #0004 95%, #0000;
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
