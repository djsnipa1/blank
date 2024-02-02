<script>
  export let buttonText = 'Button';
  export let rotate1 = 90;
  export let rotate2 = 180;
</script>

{rotate1}, {rotate2}
<a href="#_" class="relative text-lg group">
  <span
    class="relative z-10 block px-5 py-3 overflow-hidden font-medium leading-tight text-stone-200 transition-colors duration-200 ease-out border-1 border-stone-800 rounded-lg group-hover:text-amber-500"
  >
    <span
      class="absolute inset-0 w-full h-full px-5 py-3 rounded-lg bg-stone-800"
    ></span>
    <span
      class="absolute left-0 w-48 h-48 -ml-2 transition-all duration-200 origin-top-right -rotate-{rotate1} -translate-x-full translate-y-12 bg-gradient-to-br from-stone-500/40 group-hover:-rotate-{rotate2} ease-in"
    ></span>
    <span class="relative">{buttonText}</span>
  </span>
  <span
    class="absolute bottom-0 right-0 w-full h-12 -mb-1 -mr-1 transition-all duration-200 ease-linear bg-stone-950 rounded-lg group-hover:mb-0 group-hover:mr-0"
    data-rounded="rounded-lg"
  ></span>
</a>
