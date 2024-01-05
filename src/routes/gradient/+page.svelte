<div>Hover</div>

<style>
  @property --myColor1 {
    syntax: '<color>';
    initial-value: #6366f1;
    inherits: false;
  }

  @property --myColor2 {
    syntax: '<color>';
    initial-value: #bef264;
    inherits: false;
  }

  div {
    width: 200px;
    height: 100px;
    background: linear-gradient(var(--myColor1), var(--myColor2));
    transition:
      --myColor1 3s,
      --myColor2 3s;
  }

  div:hover {
    --myColor1: theme(colors.amber.500);
    --myColor2: theme(colors.pink.500);
  }
</style>
