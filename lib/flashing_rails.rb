module Brightbox
  module FlashingRails
    module ViewHelpers

      # Outputs all flash messages as an unordered list
      # Returns the HTML as a string or true if flash is empty
      def flash_messages( opts = {} )
        return "" if flash.empty?
        
        css_id = opts[:id] || "flash"
        css_class = opts[:class] || nil
        
        msgs = flash.map do |key, message|
          "\t" + content_tag("li", message, :class => key)
        end.unshift("") << "" # Force a newline before/after items
        content_tag("ul", msgs.join("\n"), :id => css_id)
      end

    end
  end
end