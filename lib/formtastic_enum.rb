module ElanDesign
  module Formtastic
    module Enum

    # protected 
    
      # Outputs a select input for an acts_as_enum field
      # Requires plugin from http://github.com/gsmendoza/belongs_to_enum
      #
      def enum_input(method, options)
        collection = object.class.send(method.to_s.pluralize).map { |entry| [entry.title.to_s.titleize, entry.id] }
        html_options = options.delete(:input_html) || {}
        input_name = (generate_association_input_name(method).to_s + "_id").to_sym
        self.label(method, options_for_label(options).merge(:input_name => input_name)) +
        self.select(input_name, collection, strip_formtastic_options(options), html_options)
      end    
    
    end
  end
end