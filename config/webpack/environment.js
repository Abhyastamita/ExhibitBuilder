const { environment } = require('@rails/webpacker')

module.exports = environment

const webpack = require("webpack")
 
environment.plugins.append("Provide", new webpack.ProvidePlugin({
  Popper: ['popper.js', 'default'],
  $: 'jquery/src/jquery',
  jQuery: 'jquery/src/jquery',
  bootstrap: ['bootstrap']
}))

const aliasConfig = {
  'jquery-ui': 'jquery-ui-dist/jquery-ui.js'
};

environment.config.set('resolve.alias', aliasConfig);

module.exports = environment