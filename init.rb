if Object.const_defined?("Formtastic")
  require 'formtastic_enum'
  Formtastic::SemanticFormBuilder.send(:include, ElanDesign::Formtastic::Enum)
end
