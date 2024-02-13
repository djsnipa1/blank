<script>
  import '@fontsource/khand/300.css';
  import '@fontsource/khand/400.css';
  import '@fontsource/khand/500.css';
  import '@fontsource/khand/600.css';
  import '@fontsource/khand/700.css';
</script>
<div class="gradient-glowing-text khand font-weight-600 text-6xl font-bold">
  <h1 aria-hidden="true">Gradient Text Glow</h1>
  <h1>Gradient Text Glow</h1>
</div> 




<style lang="scss">
  @layer demo {
    .gradient-glowing-text {
      display: grid;
      
      > * {
        grid-area: 1 / 1;
      }
      
      > h1 {
        background: linear-gradient(to right, oklch(90% .3 230), oklch(70% .3 340));
        -webkit-background-clip: text;
        color: transparent;
        
        // Define the rotate-gradient animation
        @keyframes rotate-gradient {
          from {
            background-position: 0%;
          }
          to {
            background-position: 100%;
          }
        }
        
        @media (prefers-reduced-motion: no-preference) {
          animation: rotate-gradient 5s linear infinite;
        }
        
        &[aria-hidden] {
          filter: blur(clamp(30px, 4vw, 60px)) saturate(2);
        }
      }
    }
  }
</style>
