<script>
  import { onMount } from 'svelte';
  import { browser } from '$app/environment';
  import { gsap } from 'gsap';
  import { css } from './cssVars.js';

if (browser) {
  let size = 32;
  // let color = '#c9ff35';
  let color = '#fff';

  let stars;
  let stars2;
  let stars3;

  let width = window.screen.width;
  let height = window.screen.height;

  console.log(width, height);
  export function cssVariables(node, variables) {
    setCssVariables(node, variables);

    return {
      update(variables) {
        setCssVariables(node, variables);
      }
    };
  }
  function setCssVariables(node, variables) {
    for (const name in variables) {
      node.style.setProperty(`--${name}`, variables[name]);
    }
  }

  // randonm number function
  let randNumber = (high) => {
    return Math.floor(Math.random() * (1 + high - 2)) + 2;
  };

  // create multiple box-shadow values
  function multiBoxShadow(n) {
    let value = [];
    for (let i = 0; i < n; i = i + 2) {
      let value1 = `${randNumber(width * 2)}px ${randNumber(
        height * 2
      )}px ${color}`;
      value += `${value1}, ${randNumber(width * 2)}px ${randNumber(
        height * 2
      )}px ${color},`;
    }
    return value;
  }

  let smallStars = multiBoxShadow(400).slice(0, -1);
  let medStars = multiBoxShadow(200).slice(0, -1);
  let largeStars = multiBoxShadow(100).slice(0, -1);
  // console.log(`largeStars: ${largeStars}`);

  onMount(() => {
    // stars animation
    gsap.to(stars, {
      y: height * -2,
      duration: 50,
      ease: 'none',
      repeat: -1
    });
    gsap.to(stars2, {
      y: height * -2,
      duration: 100,
      ease: 'none',
      repeat: -1
    });
    gsap.to(stars3, {
      y: height * -2,
      duration: 150,
      ease: 'none',
      repeat: -1
    });

    const clone = stars.cloneNode(true);

    clone.id = clone.id + 1;
    console.log(clone.id);

    gsap.fromTo(
      test,
      {
        translateY: '100%'
      },
      {
        translateY: '-100%',
        ease: 'none',
        duration: 10,
        repeat: -1
      }
    );
  });
  
  

  let test;
</script>

<!-- <div id="test" bind:this={test} use:css={{ height, width }} /> -->

<!-- <div
  bind:this={stars}
  use:cssVariables={{ smallStars: `${smallStars}` }}
  id="stars"
/> -->
<div
  bind:this={stars}
  use:cssVariables={{ smallStars, height, width }}
  id="stars"
/>
<div bind:this={stars2} use:css={{ medStars, height, width }} id="stars2" />
<div
  bind:this={stars3}
  use:cssVariables={{ largeStars, height, width }}
  id="stars3"
/>

<style>
  :root {
    height: 100%;
    background: radial-gradient(ellipse at bottom, #1b2735 0%, #090a0f 100%);
    overflow: hidden;
    font-size: calc(15px + 0.390625vw);
    color: #ffffff;
  }

  #test {
    height: calc(var(--height) * 1px);
    width: calc(var(--width) * 1px);
    background: #ffff00;
  }
  #stars {
    width: 1px;
    height: 1px;
    background: transparent;
    box-shadow: var(--smallStars);
    /*   animation: animStar var(--smallTime) linear infinite; */
    /*   animation: var(--animation); */
    /* animation: animStar 50s linear infinite; */
    position: absolute;
    top: 0;
    left: 0;
  }

  #stars::after {
    content: ' ';
    position: absolute;
    top: calc((var(--height) * 2) * 1px);
    width: 1px;
    height: 1px;
    background: transparent;
    box-shadow: var(--smallStars);
  }

  #stars2 {
    width: 2px;
    height: 2px;
    background: transparent;
    box-shadow: var(--medStars);
    /*   animation: animStar 100s linear infinite; */
    position: absolute;
    top: 0;
    left: 0;
    /*     opacity: 75%; */
  }

  #stars2::after {
    top: calc((var(--height) * 2) * 1px);
    content: ' ';
    position: absolute;
    width: 2px;
    height: 2px;
    background: transparent;
    box-shadow: var(--medStars);
  }

  #stars3 {
    width: 3px;
    height: 3px;
    background: transparent;
    box-shadow: var(--largeStars);
    /*   animation: animStar 150s linear infinite; */
    position: absolute;
    top: 0;
    left: 0;
    /*     opacity: 50%; */
  }

  #stars3::after {
    content: ' ';
    position: absolute;
    top: calc((var(--height) * 2) * 1px);
    width: 3px;
    height: 3px;
    background: transparent;
    box-shadow: var(--largeStars);
  }
</style>
