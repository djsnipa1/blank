<script>
  import 'css-doodle';

  let doodle3 = `
<css-doodle>
  <style>
  :doodle {
    @grid: 5x1 / 60vmin;
    grid-gap: 5px;
    
    background: #282828;
    
  }
  background: cyan;
  </style>
</css-doodle>
`;
</script>

<h1 class="text-2xl">doodle3.svelte</h1>
ᮃᮃ

{@html doodle3}

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
