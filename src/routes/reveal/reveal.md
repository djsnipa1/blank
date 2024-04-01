To create a mask that reveals the page by scaling a circle from small to big in Svelte, you can use a combination of CSS for the mask effect and Svelte's transitions for the animation. The idea is to have a circle that initially covers the entire page and then scales down to reveal the content underneath.

Here's a step-by-step guide on how to achieve this:

1. **Create the Circle Mask**: First, you need to create a circle that covers the entire page. This can be done using CSS.

```css
.circle-mask {
  position: fixed;
  top:  0;
  left:  0;
  width:  100vw;
  height:  100vh;
  background-color: #000; /* You can change the color as needed */
  border-radius:  50%;
  transform: scale(1);
  transition: transform  0.5s ease-out;
}
```

2. **Apply the Scaling Transition**: To animate the circle from covering the entire page to revealing the content, you can use Svelte's transition capabilities. However, since Svelte transitions are primarily used for entering and leaving states, you'll need to control the scale transformation using JavaScript and CSS.

```html
<script>
  let scale =  1; // Initial scale of  1 means covering the entire page

  function revealPage() {
    scale =  0; // Scale down to  0 to reveal the page
  }
</script>

<div class="circle-mask" style="transform: scale({scale});"></div>
<button on:click={revealPage}>Reveal Page</button>
```

3. **Trigger the Animation**: You can trigger the animation by changing the `scale` variable from  1 to  0. This can be done through a button click or any other event.

```html
<button on:click={revealPage}>Reveal Page</button>
```

4. **Adding Content**: Place your page content underneath the `.circle-mask` div. This ensures that the content is visible once the circle mask scales down.

```html
<div class="circle-mask" style="transform: scale({scale});"></div>
<div class="content">
  <!-- Your page content goes here -->
</div>
```

This approach leverages CSS for the initial setup and Svelte's reactivity to animate the circle mask. The `transform: scale({scale});` style is dynamically updated based on the `scale` variable, allowing for a smooth transition from covering the page to revealing the content underneath.