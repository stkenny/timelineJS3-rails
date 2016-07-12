module TimelineJS3
  module Rails
    class Engine < ::Rails::Engine
      initializer 'timelineJS3.assets.precompile' do |app|
        %w(stylesheets javascripts icons).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end

        # sprockets-rails 3 tracks down the calls to `font_path` and `image_path`
        # and automatically precompiles the referenced assets.
        unless Sprockets::Rails::VERSION.split('.', 2)[0].to_i >= 3
          app.config.assets.precompile << %r(tl-icons\.(?:eot|svg|ttf|woff2?)$)
        end
      end
    end
  end
end
