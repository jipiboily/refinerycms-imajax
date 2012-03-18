module Refinery
  module Imajax
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Imajax

      engine_name :refinery_imajax

      config.to_prepare do
        #loads the decorators
        Dir.glob(File.join(File.dirname(__FILE__), "../../../app/decorators/**/*_decorator*.rb")) do |c|
          Rails.configuration.cache_classes ? require(c) : load(c)
        end
      end

    end
  end
end
