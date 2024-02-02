<script>
  import 'css-doodle';

  let doodle2 = `
<css-doodle click-to-update>
  :doodle {
    @grid: 100x1 / 80vw; 
  }
  
  :container {
    @size: 125%;
    transform: 
      scale(8)
      translateY(15%) translateX(12%)
      rotate(45deg);
  }

  @place-cell: center;
  border-radius: 50%;
  transform: rotate(@rand(-.5deg, .5deg, .1));
  
  height: 20%;
  width: calc(
    100% - @calc(@index() -1) * 100% / @size()
  );

  background: @pick(
    #f9ed69, #f08a5d, #b83b5e, #6a2c70
  );
</css-doodle>
`;
</script>

{@html doodle2}
