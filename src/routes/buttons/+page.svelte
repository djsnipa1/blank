<script>
  import Button from '$lib/components/Button.svelte';
</script>

<div class="grid place-items-center">
  <Button label="Motherfuck" />

  <button class="hover:bg-orange-500">Motherfucker</button>

  <button
    class="bg-gradient-to-tr from-amber-500 to-pink-500 bg-[position:_0%_0%] hover:bg-[position:_100%_100%] bg-[size:_200%] h-40 w-40 transition-all duration-1000"
    >Pure Tailwind</button
  >
</div>

<style>
  button {
    position: relative;
    display: block;
    overflow: hidden;
    padding: 20px 30px;
    text-decoration: none;
    background-color: #3b3b3b;
    border-radius: 5px;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: 4px;
    transition: background-color 0.4s;
  }

  button:before,
  button2:before {
    content: '';
    position: absolute;
    display: block;
    top: 0px;
    left: 0px;
    width: 70%;
    height: 100%;
    background: linear-gradient(90deg, transparent, #ffffff71, transparent);
    transform: translateX(-180px) skew(-20deg);
    transition: transform 0.4s;
  }

  button:hover::before,
  button2:hover::before {
    transform: translateX(220px) skew(-20deg);
  }
  /*
button:hover, button2:hover {
  background-color: #ff006e;
}
*/
</style>
