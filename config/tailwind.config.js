const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        'pyc-yellow': {
          DEFAULT: '#f2f65f',
          50: '#fefee8',
          100: '#fcfdc1',
          200: '#f9fb86',
          300: '#f6f84b',
          400: '#f4f723',
          500: '#f2f65f',
          600: '#d6d911',
          700: '#b2b40e',
          800: '#8e8f13',
          900: '#757618',
        },
        'pyc-green': {
          DEFAULT: '#34cb9e',
          50: '#e6f5ea',
          100: '#c3f0d9',
          200: '#9fecb8',
          300: '#7be797',
          400: '#57e276',
          500: '#34cb9e',
        }
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}