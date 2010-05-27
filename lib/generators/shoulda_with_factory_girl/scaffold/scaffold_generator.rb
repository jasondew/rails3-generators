require 'generators/shoulda_with_factory_girl'
require 'rails/generators/test_unit/scaffold/scaffold_generator'

module ShouldaWithFactoryGirl
  module Generators
    class ScaffoldGenerator < TestUnit::Generators::ScaffoldGenerator

      include Rails::Generators::ResourceHelpers

      class_option :dir, :type => :string, :default => "test/functional", :desc => "The directory where the controller tests should go"
      check_class_collision :suffix => "ControllerTest"

      def create_test_files
        template 'model.rb', File.join(options[:dir], "#{singular_name}_test.rb")
        template 'controller.rb', File.join(options[:dir], "#{file_name}_controller_test.rb")
      end

      hook_for :fixture_replacement
    end
  end
end
