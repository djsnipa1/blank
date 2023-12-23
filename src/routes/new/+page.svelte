<script>
  import AnimatedElement from '$lib/components/AnimatedElement.svelte';
</script>

<main>
  <div class="hero">
    <h1>Hello Svelte Inview</h1>
    <p>Scroll down to animate the elements</p>
  </div>
  <div class="full-height">
    <AnimatedElement />
  </div>
  <div class="full-height">
    <AnimatedElement />
  </div>
</main>

<style>
  :root {
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen,
      Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
    color: #fff;
  }

  main {
    text-align: center;
    padding: 0 1em;
    margin: 0 auto;
  }

  h1 {
    margin-bottom: 0.5rem;
  }

  p {
    margin-top: 0;
  }

  .hero {
    height: calc(100vh - 16px);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }

  .full-height {
    height: 100vh;
    display: flex;
    justify-content: center;
  }
</style>
