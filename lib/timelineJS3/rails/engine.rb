module TimelineJS3
  module Rails
    class Engine < ::Rails::Engine
      config.assets.paths << config.root.join('vendor', 'assets', 'javascripts')
      config.assets.paths << config.root.join('vendor', 'assets', 'stylesheets')
      config.assets.paths << config.root.join('vendor', 'assets', 'fonts')
      config.assets.precompile += [ "*.svg", "*.eot", "*.woff", "*.ttf" ]
    end
  end
end
