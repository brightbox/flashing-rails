module Brightbox
  module FlashingRails
    module ViewHelpers

      # Outputs all flash messages as an unordered list
      # Returns the HTML as a string or true if flash is empty
      def flash_messages( opts = {} )
        return "" if flash.empty?
        
        css_id = opts[:id] || "flash"
        css_class = opts[:class] || nil

        generate_flash_list = lambda do |key, message|
          if message.is_a?(Array)
            message.map {|msg| generate_flash_list[key, msg] }.join("\n")
          else
            "\t" + content_tag("li", message, :class => key)
          end
        end

        msgs = flash.map do |key, message|
          generate_flash_list[key, message]
        end.unshift("") << "" # Force a newline before/after items

        content_tag("ul", msgs.join("\n").html_safe, :id => css_id).to_s.html_safe
      end

    end
  end
end
