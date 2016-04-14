# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.scss, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( rails1.jpg )
Rails.application.config.assets.precompile += %w( user.jpg )
Rails.application.config.assets.precompile += %w( about-bg.jpg )
Rails.application.config.assets.precompile += %w( contact-bg.jpg )
Rails.application.config.assets.precompile += %w( home-bg.jpg )
Rails.application.config.assets.precompile += %w( post-bg.jpg )
Rails.application.config.assets.precompile += %w( post-sample-image.jpg )
Rails.application.config.assets.precompile += %w( Nema_slike.png )
Rails.application.config.assets.precompile += %w( Nema_slike2.jpg )
Rails.application.config.assets.precompile += %w( Nema_slike3.jpg )
Rails.application.config.assets.precompile += %w( coffie-1.jpg )
Rails.application.config.assets.precompile += %w( Blog-2.jpg )
Rails.application.config.assets.precompile += %w( glavna1.jpg )
Rails.application.config.assets.precompile += %w( glavna2.jpg )

Rails.application.config.assets.precompile += %w( bootstrap.scss )
Rails.application.config.assets.precompile += %w( bootstrap.min.scss )
Rails.application.config.assets.precompile += %w( clean-blog.css )
Rails.application.config.assets.precompile += %w( clean-blog.min.css )
Rails.application.config.assets.precompile += %w( ie6.css ie7.css )
Rails.application.config.assets.precompile += %w( signin.css )
Rails.application.config.assets.precompile += %w( stil.css )

Rails.application.config.assets.precompile += %w( bootstrap.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( clean-blog.js )
Rails.application.config.assets.precompile += %w( clean-blog.min.js )
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( jquery.min.js )

Rails.application.config.assets.precompile += %w( scaffold.coffee )



Rails.application.config.assets.precompile += %w( *.svg *.eot *.woff *.ttf )