<script>
  export let data;
</script>

<div class="contain">
  <div class="clock">
    <div class="clock-face">
      <div class="hand hour-hand" />
      <div class="hand min-hand" />
      <div class="hand second-hand" />
    </div>
  </div>
</div>

<style>
  .contain {
    background-image: linear-gradient(
      to right bottom,
      #08e5db,
      #3eddac,
      #6fd278,
      #98c245,
      #bfae12,
      #da9b0e,
      #f08427,
      #ff6c42,
      #ff5965,
      #ff4c8e,
      #ff4eba,
      #fb5fe7
    );
    background-size: cover;
    font-family: 'helvetica neue';
    text-align: center;
    font-size: 10px;
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    z-index: -1;

    margin: 0;
    font-size: 2rem;
    display: flex;
    flex: 1;
    min-height: 100vh;
    align-items: center;
  }
  .clock {
    width: 20rem;
    height: 20rem;
    border: 20px solid white;
    border-radius: 50%;
    margin: 50px auto;
    position: relative;
    padding: 2rem;
    box-shadow:
      0 0 0 4px rgba(0, 0, 0, 0.1),
      inset 0 0 0 3px #efefef,
      inset 0 0 10px black,
      0 0 10px rgba(0, 0, 0, 0.2);
  }

  .clock-face {
    position: relative;
    width: 100%;
    height: 100%;
    transform: translateY(-3px); /* account for the height of the clock hands */
  }

  .hand {
    width: 50%;
    height: 6px;
    background: black;
    position: absolute;
    top: 50%;
  }
</style>
