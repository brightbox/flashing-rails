# Include hook code here
require File.dirname(__FILE__) + "/lib/flashing_rails"

ActionView::Base.send(:include, Brightbox::FlashingRails::ViewHelpers)
