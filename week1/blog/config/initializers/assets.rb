# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"
# config/assets.rb
Rails.application.config.assets.paths << Rails.root.join("app", "javascript", "entrypoints") # Example
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap-icons/font")

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap-icons/font")
