<script>
	import { onMount } from 'svelte';

	// An array of the main Tailwind colors
	const colors = [
		'slate',
		'gray',
		'zinc',
		'netural',
		'stone',
		'red',
		'orange',
		'amber',
		'yellow',
		'lime',
		'green',
		'emerald',
		'teal',
		'cyan',
		'sky',
		'blue',
		'indigo',
		'violet',
		'purple',
		'fuchsia',
		'pink',
		'rose'
	];

	// Get the container element
	let colorContainer;

	/*	onMount(() => {
		// Insert the HTML document into the container element
		//colorContainer.innerHTML = htmlDoc;

		// Loop through the array
		for (let i = 0; i < tailwindColors.length; i++) {
			// Create a new div element
			let newDiv = document.createElement('div');

			// Set some attributes or content for the div element
			newDiv.className = `col-span-1 bg-${tailwindColors[i]}-500`;
			//newDiv.textContent = (i + 1);

			// Append the div element to the parent element
			colorContainer.appendChild(newDiv);
		}
	});

	//wrapper.appendChild(para); // append the paragraph
	//document.body.appendChild(wrapper); // append the div to the body
*/
</script>

<div class="grid grid-cols-10 md:grid-cols-5 sm:grid-cols-2 gap-4">
	<div class="col-span-1 bg-red-500">1</div>
	<div class="col-span-1 bg-green-500">2</div>
	<div class="col-span-1 bg-blue-500">3</div>
	<div class="col-span-1 bg-yellow-500">4</div>
	<div class="col-span-1 bg-pink-500">5</div>
	<div class="col-span-1 bg-purple-500">6</div>
	<div class="col-span-1 bg-indigo-500">7</div>
	<div class="col-span-1 bg-gray-500">8</div>
	<div class="col-span-1 bg-orange-500">9</div>
	<div class="col-span-1 bg-teal-500">10</div>
</div>

<div bind:this={colorContainer} class="grid grid-cols-10 md:grid-cols-5 sm:grid-cols-2 gap-4">
	{#each colors as color, i}
		<div class="col-span-1 bg-{colors[i]}-500">{i + 1}</div>
	{/each}
</div>
