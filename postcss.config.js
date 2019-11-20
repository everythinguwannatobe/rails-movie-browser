const tailwindcss = require('tailwindcss');

module.exports = {
    plugins: [
        tailwindcss('./app/javascript/packs/application.js'),
        require('autoprefixer'),
        require('postcss-import'),
        require('postcss-flexbugs-fixes'),
        require('postcss-preset-env')({
            autoprefixer: {
                flexbox: 'no-2009'
            },
            stage: 3
        }),
    ]
}
