require 'generators/formtastic_erb'
require 'rails/generators/named_base'

module FormtasticErb
  module Generators
    class ControllerGenerator < Rails::Generators::NamedBase
      extend TemplatePath
      
      argument :actions, :type => :array, :default => [], :banner => "action action"

      def create_view_files
        base_path = File.join("app/views", class_path, file_name)
        empty_directory base_path

        actions.each do |action|
          @action = action
          @path   = File.join(base_path, "#{action}.html.erb")

          template 'view.html.erb', @path
        end
      end
    end
  end
end
