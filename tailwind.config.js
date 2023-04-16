
const config = {
	content: ['./src/**/*.{html,js,svelte,ts}'],

	theme: {
		fontFamily: {
			'sans': ['KyivSans', 'system-ui',],
		  },
		container: {
			center: true,
			padding: {
			  DEFAULT: '1rem',
			  sm: '2rem',
			  lg: '5rem',
			  xl: '7rem',
			  '2xl': '9rem',
			},
		  },
	
		extend: {
			colors: {
				'purp': '#3f3cbb',				
				'dark' : '#151515',
				'gold-1' :'#DDF247',
			    'gold-2' :'#F97316',
				'myPink':'#831843',
			  },

		}
	},

  plugins: [require("daisyui")],
};

module.exports = config;
