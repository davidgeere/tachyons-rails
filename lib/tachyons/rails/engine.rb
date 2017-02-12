require 'rails'

module Tachyons
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Tachyons::Rails
    end
  end
end
