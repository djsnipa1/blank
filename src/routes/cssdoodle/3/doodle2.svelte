<script>
  import 'css-doodle';

  let doodle2 = `
<css-doodle>
  <style>
  :doodle {
    @grid: 100 / 60vmin;
    
    background: #282828;
    
  }
  background: cyan;
  </style>
</css-doodle>
`;
  let doodleOrig = `
<css-doodle>
  <style>
    @grid: 20 / 60vh;

    background: cyan;
    scale: 0;
    opacity: 0;
    animation: m 4s linear infinite;
    
    animation-delay: calc(
      -1s/@I * @i * @sin(@i)
    );

    @keyframes m {
      0%, 50%, 90% { scale: 1; opacity: 1 }
      25%, 75%, 100% { scale: 0; opacity: 0 }
    }
    </style>
 </css-doodle>
`;
</script>

<h1 class="text-2xl">doodle2.svelte</h1>
ᮃᮃᮃᮃ

{@html doodleOrig}

<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');

  h1 {
    font-family: 'Noto Sans';
    font-weight: 300;
  }
  css-doodle {
    font-family: 'Noto Sans';
    font-weight: 900;
  }
</style>
