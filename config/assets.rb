Rails.application.config.assets.paths << Rails.root.join('node_modules', 'vendor/assets')
app.config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')  
app.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
