module FlashingRails
  class Railtie < Rails::Railtie
    initializer "flashing_rails.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end