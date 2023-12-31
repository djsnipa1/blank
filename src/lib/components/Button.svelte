<div
  class="button2 button text-6xl font-bold bg-gradient-to-br from-yellow-600 to-red-600 inline-block text-transparent bg-clip-text flex justify-center pt-4"
>
  Fuckin’ A
</div>

<button
  class="hover:bg-gradient-to-br from-yellow-600 to-red-600 hover:transition-all duration-1000"
  >Motherfuck</button
>

<button
  class="bg-gradient-to-tr from-amber-500 to-pink-500 bg-[position:_0%_0%] hover:bg-[position:_100%_100%] bg-[size:_200%] h-40 w-40 transition-all duration-1000"
  >Pure Tailwind</button
>

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
