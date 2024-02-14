const colors = require('tailwindcss/colors');

/** @type {import('tailwindcss').Config}*/
const config = {
	content: ['./src/**/*.{html,js,svelte,ts}'],

	theme: {
		extend: {
			colors: {
				grayscale: {
					100: '#f8f8f8',
					200: '#f0f0f0',
					300: '#e1e1e1',
					400: '#cdcdcd',
					500: '#aeaeae',
					600: '#919191',
					700: '#767676'
				},
				neon: {
					100: '#eeffca',
					200: '#dcff40',
					300: '#a8f800',
					400: '#7ce700',
					500: '#4fc700',
					600: '#2ba800',
					700: '#108900'
				},
				stonewall: {
					DEFAULT: '#928374',
					50: '#E3DFDB',
					100: '#DAD5CF',
					200: '#C8C0B9',
					300: '#B6ACA2',
					400: '#A4978B',
					500: '#928374',
					600: '#73675A',
					700: '#544B42',
					800: '#352F29',
					900: '#151311',
					950: '#050504'
				}
			},
			fontFamily: {
				blogger: ['Blogger Sans'],
				khand: ['Khand']
			},
			backgroundSize: {
				'size-200': '200% 200%'
			},
			backgroundPosition: {
				'pos-0': '0% 0%',
				'pos-100': '100% 100%'
			}
		}
	},

	plugins: [require('daisyui')],

	daisyui: {
		themes: true,
		darkTheme: 'coffee',
		base: true, // applies background color and foreground color for root element by default
		styled: true, // include daisyUI colors and design decisions for all components
		utils: true, // adds responsive and modifier utility classes
		prefix: '', // prefix for daisyUI classnames (components, modifiers and responsive class names. Not colors)
		logs: false, // Shows info about daisyUI version and used config in the console when building your CSS
		themeRoot: ':root' // The element that receives theme color CSS variables
	},

	mode: 'jit'
};

module.exports = config;
